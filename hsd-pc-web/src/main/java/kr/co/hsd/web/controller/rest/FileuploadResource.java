package kr.co.hsd.web.controller.rest;

import kr.co.hsd.core.common.domain.UploadedFile;
import kr.co.hsd.core.common.service.FileService;
import kr.co.hsd.web.controller.BaseFormController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by lee young eun on 2017-08-11.
 */
@RestController
@RequestMapping("/api")
public class FileuploadResource extends BaseFormController {

    private static final Logger log = LoggerFactory.getLogger(FileuploadResource.class);

    @Autowired
    private FileService fileService;

    /**
     * 파일업로드
     * @param file : 첨부파일
     * @param type : 업로드 경로
     * @return
     */
    @RequestMapping(value= "/fileupload/{type}", method = RequestMethod.POST)
    public ResponseEntity<Map<String, Object>> fileUpload(@RequestParam("file") MultipartFile file,
                                                          @PathVariable("type") String type) {

        Map<String, Object> result = new HashMap<>();

        try{
            UploadedFile uploadedFile = fileService.upload(file, type);

            result.put("attach_file", uploadedFile.getFile_name());      //실제파일명
            result.put("attach_name", uploadedFile.getOrg_file_name());  //파일명
        }catch (Exception e){
            result.put("error", e.getMessage());
        }

        return new ResponseEntity<>(result, HttpStatus.OK);
    }


}
