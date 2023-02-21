package kr.co.taihan.front.common.mail;

import lombok.*;

import java.util.List;
import java.util.Map;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MailDto {

    /* 문의자 */
    private String to;
    /* 메일 제목 */
    private String subject;

    /* 이름 */
    private String name;
    /* 이메일 */
    private String email;
    /* 연락처 */
    private String tel;
    /* 추가연락처(핸드폰) */
    private String phone;
    /* 제목 */
    private String title;
    /* 내용 */
    private String message;
    /* 소속회사 */
    private String company;
    /* 첨부파일 리스트 */
    private List<String> filenames;
    /* 첨부파일 org,sys map으로 담을 리스트 */
    private List<Map<String, Object>> fileNms;
    /* 접수일 */
    private String inquiryDay;
    /* 클릭시 이동 url */
    private String clickUrl;
    /* 발송 대상 주체 user(문의자), admin(관리자)*/
    private String toType;
    /* 문의유형 노출 텍스트 */
    private String inquiryTypeTxt;
    /* 언어 */
    private String lang;
    /*  구동 환경 : loc, dec, prd */
    private String serverType;
    /* url파라미터*/
    private String urlParam;
    /* 접수 번호*/
    private String registNum;

    /* 1 -> 1:1문의 메일,  2 -> 윤리경영(공정거래) 메일 */
    private String mailType;

    /* em -> 윤리경영 , cp -> 공정거래 */
    private String gubun;

}
