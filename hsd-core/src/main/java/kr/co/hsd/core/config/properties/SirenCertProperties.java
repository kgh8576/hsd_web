package kr.co.hsd.core.config.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * Created by lee young eun on 2017-08-12.
 */
@Data
@ConfigurationProperties(prefix = "wylie.siren-cert")
public class SirenCertProperties {
    private String id;

    private String srvNoForJoin;

    private String srvNoForLogin;
}
