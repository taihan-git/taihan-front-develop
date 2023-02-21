package kr.co.taihan.front.common.util.file;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.util.Arrays;

/**
 * 파일 메타 클래스
 *
 * FileMeta.java
 *
 * @Company : digitalDigm Inc
 * @Author : Richard Song
 * @Date : 2017. 11. 2.
 *
 *  수정일                   수정자                  수정내용
 *  -------------   ------------    ---------------------------
 *  2017. 11. 2.	Richard Song	      최초 생성
 *
 */
@JsonIgnoreProperties({ "bytes" })
public class FileMeta {

	/**
	 * 원본파일 명
	 **/
	private String fileName;
	/**
	 * 저장 파일명
	 **/
	private String fileSaveName;
	/**
	 * 저장 파일 url
	 **/
	private String fileUrl;
	/**
	 * 저장 파일 Path
	 **/
	private String filePath;
	/**
	 * 파일 사이즈
	 **/
	private String fileSize;
	/**
	 * 파일 타입
	 **/
	private String fileType;
	/**
	 * 파라미터 명
	 **/
	private String name;
	/**
	 * 파일 구분
	 **/
	private String fileDiv;
	/**
	 * 파일 첨부 명
	 **/
	private String fileAttName;
	/**
	 * 파일 삭제 여부
	 **/
	private String fileRemoveYn;
	/**
	 * 미리 보기 여부
	 */
	private String filePreviewYn;

	private byte[] bytes;

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileSaveName() {
		return fileSaveName;
	}

	public void setFileSaveName(String fileSaveName) {
		this.fileSaveName = fileSaveName;
	}

	public String getFileUrl() {
		return fileUrl;
	}

	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileSize() {
		return fileSize;
	}

	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFileDiv() {
		return fileDiv;
	}

	public void setFileDiv(String fileDiv) {
		this.fileDiv = fileDiv;
	}

	public byte[] getBytes() {
		return bytes;
	}

	public void setBytes(byte[] bytes) {
		this.bytes = bytes;
	}

	@Override
	public String toString() {
		return "FileMeta [fileName=" + fileName + ", fileSaveName=" + fileSaveName + ", fileUrl=" + fileUrl
				+ ", filePath=" + filePath + ", fileSize=" + fileSize + ", fileType=" + fileType + ", name=" + name
				+ ", fileDiv=" + fileDiv + ", bytes=" + Arrays.toString(bytes) + "]";
	}

	/**
	 * @return the fileAttName
	 */
	public String getFileAttName() {
		return fileAttName;
	}

	/**
	 * @param fileAttName the fileAttName to set
	 */
	public void setFileAttName(String fileAttName) {
		this.fileAttName = fileAttName;
	}

	/**
	 * @return the fileRemoveYn
	 */
	public String getFileRemoveYn() {
		return fileRemoveYn;
	}

	/**
	 * @param fileRemoveYn the fileRemoveYn to set
	 */
	public void setFileRemoveYn(String fileRemoveYn) {
		this.fileRemoveYn = fileRemoveYn;
	}

	/**
	 * @return the filePreviewYn
	 */
	public String getFilePreviewYn() {
		return filePreviewYn;
	}

	/**
	 * @param filePreviewYn the filePreviewYn to set
	 */
	public void setFilePreviewYn(String filePreviewYn) {
		this.filePreviewYn = filePreviewYn;
	}

}
