package kr.co.hsd.core.config.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * Created by lee young eun on 2017-07-07.
 */
@Data
@ConfigurationProperties(prefix = "wylie.site")
public class SiteProperties {
    private String domain;
    private String urlPc;
    private String viewMode;
}
