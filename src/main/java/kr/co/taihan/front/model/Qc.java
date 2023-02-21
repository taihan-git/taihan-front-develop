package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.web.multipart.MultipartFile;

@Data
@EqualsAndHashCode(callSuper=false)
public class Qc extends Search {

	public Qc() {}

	private String idx;
	private String title;  	
	private String introText;  	
	private String orgThumImgFile;
	private String sysThumImgFile;
	private String thumImgText;  	
	private String orgFile;
	private String sysFile;
	private String lang;
	private String displayYn;
	private String delYn;
	private String regIdx;
	private String regDt;
	private String updIdx;
	private String updDt;
	private String qcCate;
	
	 private String delChkYn;
	 private String delChkYn2;
	 
	private MultipartFile imgFile;
    private MultipartFile file;

    private String reportType;
    
    private String schQcCate;
    private String schKey2;
    private String schField;
	private String schRegStDt;
	private String schRegEdDt;
	private String viewNm;
	  
}
