package kr.co.taihan.front.model;

import lombok.Data;

@Data
public class WorkPlaceCont {

    public WorkPlaceCont(){}
    
    private String idx;           //
    private String workplaceIdx;      //사업소 idx
    private String title;         //타이틀
    private String content;       //내용
    private String regIdx;        //등록자_idx
    private String regDt;         //등록일시
    
}
