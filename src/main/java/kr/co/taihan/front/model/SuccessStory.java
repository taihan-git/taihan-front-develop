package kr.co.taihan.front.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class SuccessStory extends Search {

    public SuccessStory(){}
    private String idx;
    private String title;           //제목
    private String orgThumImgFile;  //썸네일 이미지 실제 파일명
    private String sysThumImgFile;  //썸네일 이미지 저장 파일명
    private String thumImgText;      //썸네일 대체 텍스트
    private String category;        //분야
    private String contry;          //국가
    private String topFixYn;        //상단고정 여부
    private String displayYn;       //전시노출여부
    private String delYn;           //삭제여부
    private String hits;            //조회수
    private String prodDspYn;       //제품
    private String areaDspYn;       //지역
    private String ownerDspYn;      //발주처
    private String lngDspYn;        //공급길이
    private String qntDspYn;        //공급수량
    private String amtDspYn;        //수주금액
    private String periodDspYn;     //진행기간
    private String prosDspYn;       //프로세스
    private String prodDspTxt;       //제품
    private String areaDspTxt;       //지역
    private String ownerDspTxt;      //발주처
    private String lngDspTxt;        //공급길이
    private String qntDspTxt;        //공급수량
    private String amtDspTxt;        //수주금액
    private String periodDspTxt;     //진행기간
    private String prosDspTxt;       //프로세스
    
    private String officialAddTxt;  //관계자 소감
    private String officialInfo;    //관계자 정보
    private String regIdx;          //등록자_일련번호
    private String regDt;           //등록일시
    private String updIdx;          //수정자_일련번호
    private String updDt;           //수정일시
    
    private String tagInfoList;
    
    private List<SuccessStoryCont> successStoryContList;
}
