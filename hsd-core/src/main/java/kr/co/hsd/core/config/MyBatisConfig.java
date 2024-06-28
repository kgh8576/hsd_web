package kr.co.hsd.core.config;

import kr.co.hsd.core.config.support.DefaultMapper;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.type.JdbcType;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.mybatis.spring.boot.autoconfigure.SpringBootVFS;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import javax.sql.DataSource;
import java.io.IOException;

/**
 * Created by s2ung on 2017-04-13.
 */
public abstract class MyBatisConfig {
    public static final String BASE_PACKAGE = "kr.co.hsd.core";
    public static final String TYPE_ALIASES_PACKAGE = "kr.co.hsd.core";
    public static final String TYPE_HANDLER_PACKAGE = "kr.co.hsd.core.config.mybatis.type";
    public static final String MAPPER_LOCATIONS_PATH = "classpath:mybatis/sql/**/*.xml";
    public org.apache.ibatis.session.Configuration configuration = new org.apache.ibatis.session.Configuration();

    protected void configureSqlSessionFactory(SqlSessionFactoryBean sessionFactoryBean, DataSource dataSource) throws IOException {
        configuration.setMapUnderscoreToCamelCase(true);
        configuration.setJdbcTypeForNull(JdbcType.NULL);

        PathMatchingResourcePatternResolver pathResolver = new PathMatchingResourcePatternResolver();
        sessionFactoryBean.setDataSource(dataSource);
        sessionFactoryBean.setTypeAliasesPackage(TYPE_ALIASES_PACKAGE);
        sessionFactoryBean.setTypeHandlersPackage(TYPE_HANDLER_PACKAGE);
        sessionFactoryBean.setMapperLocations(pathResolver.getResources(MAPPER_LOCATIONS_PATH));
        sessionFactoryBean.setConfiguration(configuration);
        sessionFactoryBean.setVfs(SpringBootVFS.class);
    }
}

@Configuration
@ComponentScan(basePackages = MyBatisConfig.BASE_PACKAGE)
@MapperScan(basePackages = MyBatisConfig.BASE_PACKAGE, annotationClass = DefaultMapper.class, sqlSessionFactoryRef = "defaultSqlSessionFactory")
class DefaultMyBatisConfig extends MyBatisConfig {

    @Primary
    @Bean
    public SqlSessionFactory defaultSqlSessionFactory(@Qualifier("defaultDataSource") DataSource defaultDataSource) throws Exception {
        SqlSessionFactoryBean sessionFactoryBean = new SqlSessionFactoryBean();
        configureSqlSessionFactory(sessionFactoryBean, defaultDataSource);
        return sessionFactoryBean.getObject();
    }
}
