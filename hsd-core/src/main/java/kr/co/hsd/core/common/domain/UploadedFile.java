package kr.co.hsd.core.common.domain;

import lombok.Data;

import java.io.File;

/**
 * Created by lee young eun on 2017-09-01.
 */
@Data
public class UploadedFile {

    String idx;
    String result; //SUCCESS,FAIL
    String org_file_name;
    String file_name;
    String file_path;
    long file_size;
    File saveFile;
    int bitrate;
    String contents_type;
    String file_ext;
}
