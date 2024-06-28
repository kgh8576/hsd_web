package kr.co.hsd.core.config.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

import java.util.Map;

/**
 * Created by lee young eun on 2017-07-07.
 */
@Data
@ConfigurationProperties(prefix = "wylie.file-upload")
public class FileUploadProperties {
    private String filepath;
    private String location;
}
