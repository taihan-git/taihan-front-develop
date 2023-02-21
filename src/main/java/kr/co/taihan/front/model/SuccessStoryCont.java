package kr.co.taihan.front.model;

import java.util.List;

import lombok.Data;

@Data
public class SuccessStoryCont {

    public SuccessStoryCont(){}
    
    private String idx;           //
    private String storyIdx;      //성공사례 idx
    private String type;          //A:기본타입1,B:기본타입2,C:기본타입3,D:기본타입4,G:갤러리,V:영상
    private String contTitle;         //타이틀
    private String content;       //내용
    private String imgText;
    private String videoUrl;      //영상 URL
    private String regIdx;        //등록자_일련번호
    private String regDt;         //등록일시
    
    //private List<MultipartFile> imgFiles;
    
    private List<SuccessStoryContSub> contSubList;
    
}
