package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.multipart.MultipartFile;

@Data
@EqualsAndHashCode(callSuper = false)
public class Qna extends Search {

	public Qna() {}
	
	private int muid;
	private String lang;
	private String continent;
	private String country;
	private String uto1;
	private String uto2;
	private String uto3;
	private String title;
	private String memo;
	private String qnaFile;
	private String orgPcFile;
	private String sysPcFile;
	private String name;
	private String email;
	private String tel;
	private String phone;
	private String company;
	private String date;
	
	private int idx;
	private String menuType;
	private String menuDepth;
	private String menuParent;
	private String menuCode;
	private String menuName;
	private String schUto1;
	private String schUto2;
	private String selectKeyword;
	private String schKeyword;
	private String schStartDy;
	private String schEndDy;
	private String schDate;
	private String userIp;
	private String inquiryTypeTxt;
	private String schCate;

	/* 담당자 메일*/
	private String adminMail;

	private MultipartFile pcFile;


}
