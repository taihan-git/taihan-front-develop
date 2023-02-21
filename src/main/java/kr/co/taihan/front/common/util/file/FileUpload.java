package kr.co.taihan.front.common.util.file;

import kr.co.d2.d2jwork.util.FileUtil;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

/**
 * 파일 업로드 처리
 * <p>
 * FileUpload.java
 *
 * @Company : digitalDigm Inc
 * @Author : Richard Song
 * @Date : 2017. 11. 2.
 * <p>
 * 수정일                   수정자                  수정내용
 * -------------   ------------    ---------------------------
 * 2017. 11. 2.	Richard Song	      최초 생성
 */
public class FileUpload {

    private static Logger logger = LoggerFactory.getLogger(FileUpload.class);

    private MultipartHttpServletRequest request = null;
    private Map<String, FileMeta> fileMap = new HashMap<String, FileMeta>();
    private List<FileMeta> fileList = new ArrayList<FileMeta>();

    private String uploadPath = null;

    private String shortPath;

    private boolean randomPolicy = false;

    /**
     * 허용 확장자
     **/
    private String[] allowExts = null;
    /**
     * 불가 확장자
     **/
    private String[] denyExts = {"jsp", "java", "sh", "bat"};

    private List<String> deleteImageList = new ArrayList<>();


    /**
     * 파일 업로드
     *
     * @param request
     * @param uploadPath
     */
    public FileUpload(String uploadPath) {
        this.uploadPath = uploadPath;
        this.randomPolicy = true;
    }

    /**
     * 파일 업로드
     *
     * @param request
     * @param uploadPath
     */
    public FileUpload(MultipartHttpServletRequest request, String uploadPath) {

        this.request = request;
        this.uploadPath = uploadPath;
        this.randomPolicy = true;
    }

    /**
     * 파일 업로드
     *
     * @param request
     * @param uploadPath
     * @param randomPolicy
     */
    public FileUpload(MultipartHttpServletRequest request, String uploadPath, boolean randomPolicy) {

        this.request = request;
        this.uploadPath = uploadPath;
        this.randomPolicy = randomPolicy;
    }

    public FileMeta singleFileUpload(MultipartFile mpf, String allows) throws Exception {

        if (mpf.getSize() == 0) return null;

        this.allowExts = allows.split(",");

        FileMeta fileMeta = new FileMeta();

        String fileName = mpf.getOriginalFilename();
        String fileSaveName = getSaveFileName(fileName);

        fileMeta.setName(mpf.getName());
        fileMeta.setFileSaveName(fileSaveName);
        fileMeta.setFileName(fileName);
        fileMeta.setFileSize(mpf.getSize() / 1024 + "Kb");
        fileMeta.setFileType(mpf.getContentType());
        fileMeta.setBytes(mpf.getBytes());

        // 확장자 체크
        if (allowExts != null && !checkFileExtension(fileName))
            throw new Exception("ERROR_FILEUPLOAD_EXTENSION");

        try {
            File checkFolder = new File(this.uploadPath);
            if (!checkFolder.exists()) {
                checkFolder.mkdirs();
            }

            byte[] bytes = mpf.getBytes();

            Path path = Paths.get(this.uploadPath + "/" + fileSaveName);
            Files.write(path, bytes);

        } catch (IOException ie) {
            logger.error("Error during file upload", ie);
            throw new Exception("ERROR_FILEUPLOAD_WRITE");
        }
        return fileMeta;
    }

    /**
     * 파일 업로드 처리
     *
     * @return
     * @throws Exception
     */
    public boolean upload() throws Exception {
        return upload("");
    }


    /**
     * 파일 업로드 처리
     *
     * @param fileExts 허용 확장자(, 구분)
     * @return
     * @throws Exception
     */
    public boolean upload(String fileExts) throws Exception {
        if (fileExts != null)
            return upload(fileExts.split(","));
        else
            return upload();
    }

    /**
     * 업로드 처리
     *
     * @param allowExts 허용 확장자
     * @return
     * @throws Exception
     */
    public boolean upload(String[] allowExts) throws Exception {

        this.allowExts = allowExts;

        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;

        MultipartFile mpf = null;

        // 파일 업로드 정보 저장 및 확장자 체크
        for (Iterator<String> it = mpr.getFileNames(); it.hasNext(); ) {
            FileMeta fileMeta = new FileMeta();

            mpf = mpr.getFile(it.next());
            logger.debug("{} uploaded", mpf.getOriginalFilename());
            if (mpf.getSize() == 0) continue;

            String fileName = mpf.getOriginalFilename();
            String fileSaveName = getSaveFileName(fileName);

            fileMeta.setName(mpf.getName());
            fileMeta.setFileSaveName(fileSaveName);
            fileMeta.setFileName(fileName);
            fileMeta.setFileSize(mpf.getSize() / 1024 + "Kb");
            fileMeta.setFileType(mpf.getContentType());
            fileMeta.setBytes(mpf.getBytes());

            // 확장자 체크
            if (allowExts != null && !checkFileExtension(fileName))
                throw new Exception("ERROR_FILEUPLOAD_EXTENSION");

            fileList.add(fileMeta);
            fileMap.put(mpf.getName(), fileMeta);
        }
        if (fileList.size() == 0) return true;
        int i = 0;
        // 파일 저장 처리
        for (Iterator<String> it = mpr.getFileNames(); it.hasNext(); ) {

            mpf = mpr.getFile(it.next());
            if (mpf.getSize() == 0) continue;

            String saveFileName = fileList.get(i).getFileSaveName();

            try {
                //createFolderIfNotExists();

                File checkFolder = new File(this.uploadPath);
                if (!checkFolder.exists()) {
                    checkFolder.mkdirs();
                }

                byte[] bytes = mpf.getBytes();

                Path path = Paths.get(this.uploadPath + "/" + saveFileName);
                Files.write(path, bytes);

            } catch (IOException ie) {
                logger.error("Error during file upload", ie);
                throw new Exception("ERROR_FILEUPLOAD_WRITE");
            }
            i++;

        }

        return true;
    }

    /**
     * 파일을 반환
     *
     * @param key
     * @return
     * @throws Exception
     */
    public FileMeta getFile(String key) throws Exception {
        return fileMap.get(key);
    }

    /**
     * 파릴 리스트를 반환
     *
     * @return
     * @throws Exception
     */
    public List<FileMeta> getFiles() throws Exception {
        return this.fileList;
    }

    /**
     * 저장 파일명 조회
     * 랜덤파일명 = 파일명 + 랜덤문자열16자리 + 밀리초
     *
     * @param orgFileName
     * @return
     */
    private String getSaveFileName(String orgFileName) {

        String saveFileName = null;
        String fileName = orgFileName.substring(0, orgFileName.lastIndexOf("."));
        String fileExt = getFileExtension(orgFileName);

        if (this.randomPolicy) {
            long millis = System.currentTimeMillis();
            String rndchars = RandomStringUtils.randomAlphanumeric(16);
            saveFileName = fileName + "_" + rndchars + "_" + millis + "." + fileExt;
        } else {
            saveFileName = orgFileName;
        }

        return saveFileName;
    }

    /**
     * 파일 확장자 추출
     *
     * @param fileName
     * @return
     */
    private String getFileExtension(String fileName) {
        String fileExt = "";

        try {
            fileExt = fileName.substring(fileName.lastIndexOf(".") + 1);
        } catch (Exception ex) {

        }

        return fileExt;
    }

    /**
     * 파일 확장자 체크
     *
     * @param fileName
     * @return
     */
    private boolean checkFileExtension(String fileName) {

        String fileExt = getFileExtension(fileName);
        //허용 확장자에 포함되지 않은 확장자이면 업로드 불가 처리
        /*
         * for (String allow : this.allowExts) { if
         * (allow.trim().toLowerCase().equals(fileExt.toLowerCase())) { return true; } }
         */

        boolean boolAllow = false;

        if (this.allowExts != null) {
            for (String allow : this.allowExts) {
                if (boolAllow == false) {
                    if (allow.trim().toLowerCase().equals(fileExt.toLowerCase())) {
                        boolAllow = true;
                    }
                }
            }
        }

        if (this.denyExts != null) {
            for (String deny : this.denyExts) {
                if (boolAllow == true) {
                    if (deny.trim().toLowerCase().equals(fileExt.toLowerCase())) {
                        boolAllow = false;
                    }
                }
            }
        }

        return boolAllow;
    }


    /**
     * 파일 존재 여부 체크
     * @param MultipartFile file
     * @return
     */
    public boolean existFile(MultipartFile file) {

        return ObjectUtils.isNotEmpty(file) && StringUtils.isNotEmpty(file.getOriginalFilename());
    }

    /**
     * 해당 파일 명을 삭제 대상의 리스트에 추가
     * @param String fileName
     */
    public void addDeleteFile(String fileName) {
        if (StringUtils.isNotEmpty(fileName)) {
            this.deleteImageList.add(fileName);
        }
    }

    /**
     * path에 위치한 세팅된 파일을 삭제
     * @param path
     */
    public void deleteFileList(String path) {
        if(!CollectionUtils.isEmpty(deleteImageList)){
            for (String image : deleteImageList) {
                if (FileUtil.existFile(path + image)) {
                    FileUtil.deleteFile(path + image);
                }
            }
        }

    }
}
