package kr.co.taihan.front.common.mail;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring5.SpringTemplateEngine;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.File;
import java.io.IOException;

@Slf4j
@Service
@RequiredArgsConstructor
public class EmailService {

    private final JavaMailSender javaMailSender;
    private final SpringTemplateEngine templateEngine;
    private final String SENDER_MAIL = "system@taihan.com";
    private final String SENDER_NAME = "대한전선";


    public void sendMail(MailDto emailMessage) {
        try {

            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");

            //메일 수신자
            mimeMessageHelper.setTo(emailMessage.getTo());
            //메일 발신자
            mimeMessageHelper.setFrom(new InternetAddress(SENDER_MAIL,SENDER_NAME));
            //메일 제목
            mimeMessageHelper.setSubject(emailMessage.getSubject());
            //메일 본문 내용, HTML 여부
            mimeMessageHelper.setText("1".equals(emailMessage.getMailType())
                    ?  generateQnaMailTemplate(emailMessage) : generateReportMailTemplate(emailMessage) ,true);

            //첨부파일
            //mimeMessageHelper.addAttachment("logo-image",this.makeInlineImg());

            //이미지 삽입
            mimeMessageHelper.addInline("logo-image",this.makeInlineImg());

            //메일 전송
            javaMailSender.send(mimeMessage);

            logger.info("MAIL_TEST   :::::::::::::::::::::::::::: ");
            logger.info("TO_MAIL   :::: {}", emailMessage.getTo());
            logger.info("TEST TO_MAIL   :::: {}", emailMessage.getTo());
            logger.info("SEND_MAIL :::: SUCCESS");

        } catch (Exception e) {

            logger.info("MAIL_TEST   :::::::::::::::::::::::::::: ");
            logger.info("TO_MAIL   :::: {}", emailMessage.getTo());
            logger.info("SEND_MAIL ::::  FAIL");
            logger.info("FAIL_MESSAGE :::: {}", e.getMessage());
        }
    }





    private String generateReportMailTemplate(MailDto emailMessage) {
        Context ctx = new Context();
        ctx.setVariable("registNum",emailMessage.getRegistNum());
        ctx.setVariable("gubun", emailMessage.getGubun());
        ctx.setVariable("gubunTxt", "em".equals(emailMessage.getGubun()) ? "윤리경영" : "공정거래");
        ctx.setVariable("gubunTxtEn", "em".equals(emailMessage.getGubun()) ? "ethical management" : "fair trade");
        ctx.setVariable("name",emailMessage.getName());
        ctx.setVariable("phone",emailMessage.getPhone());
        ctx.setVariable("email",emailMessage.getEmail());
        ctx.setVariable("toType",emailMessage.getToType());
        ctx.setVariable("urlParam",emailMessage.getUrlParam());
        ctx.setVariable("serverType",emailMessage.getServerType());
        ctx.setVariable("inquiryDay",emailMessage.getInquiryDay());
        ctx.setVariable("lang",emailMessage.getLang());
        String html = templateEngine.process("report", ctx);
        return html;
    }

    public String generateQnaMailTemplate(MailDto emailMessage){
        Context ctx = new Context();
        ctx.setVariable("inquiryDay",emailMessage.getInquiryDay());
        ctx.setVariable("name",emailMessage.getName());
        ctx.setVariable("email",emailMessage.getEmail());
        ctx.setVariable("tel",emailMessage.getTel());
        ctx.setVariable("phone",emailMessage.getPhone());
        ctx.setVariable("toType",emailMessage.getToType());
        ctx.setVariable("company",emailMessage.getCompany());
        ctx.setVariable("inquiryTypeTxt",emailMessage.getInquiryTypeTxt());
        ctx.setVariable("title",emailMessage.getTitle());
        ctx.setVariable("message",emailMessage.getMessage());
        ctx.setVariable("filenames",emailMessage.getFilenames());
        ctx.setVariable("fileNms",emailMessage.getFileNms());
        ctx.setVariable("lang",emailMessage.getLang());
        ctx.setVariable("urlParam",emailMessage.getUrlParam());
        ctx.setVariable("serverType",emailMessage.getServerType());
        String html = templateEngine.process("qna", ctx);
        return html;
    }

    public FileSystemResource makeInlineImg(){
        File file = null;
        try {
            file = new ClassPathResource("mail-templates/header.jpg").getFile();
        } catch (IOException e) {
            logger.debug(e.getMessage());
        }
        FileSystemResource fsr = new FileSystemResource(file);
        return fsr;
    }
}
