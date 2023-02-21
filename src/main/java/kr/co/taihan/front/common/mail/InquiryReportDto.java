package kr.co.taihan.front.common.mail;


import lombok.*;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class InquiryReportDto {
    private String to;
    private String subject;
    private String message;
}
