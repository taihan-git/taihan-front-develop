package kr.co.taihan.front.common.exception;


import lombok.extern.slf4j.Slf4j;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@ControllerAdvice(annotations = Controller.class)
public class ExceptionController {

    @ExceptionHandler({Exception.class})
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public ModelAndView handleException(HttpServletRequest req, Exception e) {
        logger.error("EXCEPTION : {}", req.getRequestURI(), e);
        req.setAttribute("LANG", LocaleContextHolder.getLocale().getLanguage());
        return new ModelAndView("error/404",HttpStatus.INTERNAL_SERVER_ERROR);
    }

}
