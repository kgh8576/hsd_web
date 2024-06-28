package kr.co.hsd.core.config;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import kr.co.hsd.core.config.properties.DefaultDatabaseProperties;
import net.sf.log4jdbc.Log4jdbcProxyDataSource;
import net.sf.log4jdbc.tools.Log4JdbcCustomFormatter;
import net.sf.log4jdbc.tools.LoggingType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Profile;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;

/**
 * Created by lee young eun on 2017-07-07.
 */
public abstract class DatabaseConfiguration {

    private final Logger log = LoggerFactory.getLogger(DatabaseConfiguration.class);

    @Bean
    public abstract DataSource dataSource();

    /**
     * 공용 기본 데이터 소스 속성 세팅 및 생성
     *
     * @return
     */
    protected HikariConfig configureDataSource() {
        log.debug("Configuring Datasource");

        HikariConfig config = new HikariConfig();
        config.setIdleTimeout(3*60*1000);
        config.setMaxLifetime(15*60*1000);
        config.setMinimumIdle(2);

        return config;
    }
}

/**
 * 기본 데이터 소스 설정.
 */
@Configuration
@EnableTransactionManagement
@EnableConfigurationProperties(DefaultDatabaseProperties.class)
class DefaultDatabaseConfig extends DatabaseConfiguration {

    @Autowired
    private DefaultDatabaseProperties databaseProperties;

    @Profile({Constants.SPRING_PROFILE_LOCAL, Constants.SPRING_PROFILE_DEVELOPMENT, Constants.SPRING_PROFILE_PRODUCTION})
    @Primary
    @Bean(name = "defaultDataSource")
    public DataSource dataSource() {
        HikariConfig config = configureDataSource();
        config.setUsername(databaseProperties.getUsername());
        config.setPassword(databaseProperties.getPassword());
        config.setMaximumPoolSize(databaseProperties.getMaximumPoolSize());
        config.setDriverClassName(databaseProperties.getDriverClassName());
        config.setJdbcUrl(databaseProperties.getUrl());
        Log4jdbcProxyDataSource logDataSource = new Log4jdbcProxyDataSource(new HikariDataSource(config));

        Log4JdbcCustomFormatter formatter = new Log4JdbcCustomFormatter();
        formatter.setLoggingType(LoggingType.MULTI_LINE);
        logDataSource.setLogFormatter(formatter);
        return logDataSource;
    }

    @Primary
    @Bean(name = "defaultTx")
    public PlatformTransactionManager transactionManager(@Qualifier("defaultDataSource") DataSource defaultDataSource) {
        DataSourceTransactionManager transactionManager = new DataSourceTransactionManager(defaultDataSource);
        return transactionManager;
    }
}
