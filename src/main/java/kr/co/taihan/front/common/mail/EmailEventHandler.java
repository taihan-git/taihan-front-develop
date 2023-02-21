package kr.co.taihan.front.common.mail;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Component;
import org.springframework.transaction.event.TransactionalEventListener;


@Component
@EnableAsync
@Slf4j
@RequiredArgsConstructor
public class EmailEventHandler {

    private final EmailService emailService;

    @Async
    @TransactionalEventListener
    public void sendEmail(MailDto dto){
        logger.info("send mail");
        emailService.sendMail(dto);
    }

//    @Async
//    @TransactionalEventListener
//    public void sendInquiryReportEmail(InquiryReportDto dto){
//        EmailMessage emailMessage = new EmailMessage();
//        emailMessage.setTo(dto.getTo());
//        emailMessage.setSubject(dto.getSubject());
//        emailMessage.setMessage(dto.getMessage());
//        emailService.sendMail(emailMessage);
//    }


}
