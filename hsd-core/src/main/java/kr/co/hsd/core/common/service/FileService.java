package kr.co.hsd.core.common.service;

import kr.co.hsd.core.common.domain.UploadedFile;
import kr.co.hsd.core.config.properties.FileUploadProperties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.inject.Inject;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * Created by lee young eun on 2017-09-01.
 */
@Service("fileService")
public class FileService {

    private final Logger log = LoggerFactory.getLogger(FileService.class);

    @Inject
    private FileUploadProperties fileUploadProperties;

    public UploadedFile upload(MultipartFile multipartFile, String type) {
        try {
            return saveFile(multipartFile, type);
        } catch (IOException e) {
            log.error(e.getMessage());
            throw new RuntimeException("Could not save files");
        }
    }

    private UploadedFile saveFile(MultipartFile multipartFile, String type) throws IOException {

        if (!multipartFile.isEmpty()) {

            // 임시파일명 생성
            SimpleDateFormat f = new SimpleDateFormat("yyyyMMddhhmmss");
            String currentTime = f.format(new Date());
            String storedFileName = UUID.randomUUID().toString().replaceAll("-", "");
            storedFileName += currentTime;
            String extension = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf(".") + 1, multipartFile.getOriginalFilename().length());
            storedFileName = storedFileName + "." + extension;

            // 디렉토리 생성
            Path file_path = Paths.get(this.fileUploadProperties.getLocation(), type);
            if (!Files.isDirectory(file_path)) {
                Files.createDirectory(file_path);
            }

            // 파일업로드
            Files.copy(multipartFile.getInputStream(), file_path.resolve(storedFileName));

            UploadedFile uploadedFileVo = new UploadedFile();
            uploadedFileVo.setFile_path("/" + type + "/");
            uploadedFileVo.setFile_name(storedFileName);
            uploadedFileVo.setFile_size(multipartFile.getSize());
            uploadedFileVo.setContents_type(multipartFile.getContentType());
            uploadedFileVo.setOrg_file_name(multipartFile.getOriginalFilename());
            uploadedFileVo.setFile_ext(extension);

            return uploadedFileVo;

        } else {
            throw new FileNotFoundException("Failed to upload because it was empty");
        }
    }
}
