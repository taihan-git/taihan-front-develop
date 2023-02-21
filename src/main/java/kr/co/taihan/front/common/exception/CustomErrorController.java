package kr.co.taihan.front.common.exception;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

@Controller
@Slf4j
public class CustomErrorController implements ErrorController {

    private static final String ERROR_PATH = "/error";

    @Override
    public String getErrorPath() {
        return ERROR_PATH;
    }

    @RequestMapping(value = "/error")
    public String handlerError(HttpServletRequest request) {
        String lang = LocaleContextHolder.getLocale().getLanguage();
        request.setAttribute("LANG",lang);
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
        logger.info("error status : "+ status);
        if (status != null) {
            int statusCode = Integer.parseInt(status.toString());
            if (statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()
                    || statusCode == HttpStatus.BAD_GATEWAY.value()) {
                return "/error/404";
            }
        }
        return "/error/404";
    }
}
