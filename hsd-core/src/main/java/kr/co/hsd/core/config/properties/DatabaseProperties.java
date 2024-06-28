package kr.co.hsd.core.config.properties;

/**
 * Created by lee young eun on 2017-07-07.
 */
public interface DatabaseProperties {
    String getDriverClassName();

    String getUrl();

    String getUsername();

    String getPassword();

    String getName();

    String getHost();

    int getPort();

    int getMaximumPoolSize();

    boolean isCachePrepStmts();

    int getPrepStmtCacheSize();

    int getPrepStmtCacheSqlLimit();

    boolean isUseServerPrepStmts();
}
