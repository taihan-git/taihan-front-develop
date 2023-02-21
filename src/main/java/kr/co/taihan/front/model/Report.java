package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.web.multipart.MultipartFile;

@Data
@EqualsAndHashCode(callSuper = false)
public class Report extends Search {

  public Report() {}

  private String idx;
  private String title;
  private String lang;
  private String reportType;
  private String orgImgFile;
  private String sysImgFile;
  private String orgFile;
  private String sysFile;
  private String displayYn;
  private String delYn;
  private String regIdx;
  private String regName;
  private String regNm;
  private String regDt;
  private String updIdx;
  private String updDt;

  private String delChkYn;
  private String delChkYn2;
  private String schKey;
  private String schKey2;
  private String schField;
  
  private String schRegStDt;
  private String schRegEdDt;

  private MultipartFile imgFile;
  private MultipartFile file;

}
