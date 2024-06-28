package kr.co.hsd.core.config.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * Created by lee young eun on 2017-07-07.
 */
@Data
@ConfigurationProperties(prefix = "wylie.datasource.default")
public class DefaultDatabaseProperties implements DatabaseProperties {
    private String driverClassName;

    private String url;

    private String username;

    private String password;

    private String name;

    private boolean cachePrepStmts = true;

    private int prepStmtCacheSize = 250;

    private int prepStmtCacheSqlLimit = 2048;

    private boolean useServerPrepStmts = true;

    private int maximumPoolSize = 10;


    private String host = "127.0.0.1";

    private int port = 1521;
}
