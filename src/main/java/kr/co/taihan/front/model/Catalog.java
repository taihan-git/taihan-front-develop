package kr.co.taihan.front.model;

import kr.co.taihan.front.model.enums.CatalogCodeType;
import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.web.multipart.MultipartFile;

@Data
@EqualsAndHashCode(callSuper=false)
public class Catalog extends Search {

	public Catalog() {}

	private String idx;
	private String title;
	private String orgPdfFile;
	private String sysPdfFile;
	private String orgImgFile;
	private String sysImgFile;
	private String thumImgText;  	

	private String prodCateId;
	private String prodCateNm;
	private String lang;
	private String displayYn;
	private String tag;
	private String tagNmList;
	private String delYn;
	private String regIdx;
	private String regDt;
	private String updIdx;
	private String updDt;
	private String[] schTagArr;
	private String[] schTagNmArr;
	private String viewNm;
	
	private String[] titles;

}
