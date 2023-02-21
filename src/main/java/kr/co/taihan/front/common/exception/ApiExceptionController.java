package kr.co.taihan.front.common.exception;

import kr.co.taihan.front.model.json.Result;
import kr.co.taihan.front.model.json.ResultData;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.ConversionNotSupportedException;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.validation.BindException;
import org.springframework.web.HttpMediaTypeNotAcceptableException;
import org.springframework.web.HttpMediaTypeNotSupportedException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;
import org.springframework.web.multipart.support.MissingServletRequestPartException;
import org.springframework.web.servlet.NoHandlerFoundException;

import javax.servlet.http.HttpServletRequest;
import javax.validation.ConstraintViolationException;
import java.util.stream.Collectors;


@Slf4j
@RestControllerAdvice(annotations = RestController.class)
public class ApiExceptionController {

    /**
     * Spring MVC 관련 오류 처리.
     *
     * @param req HttpServletRequest 객체
     * @param e   Exception 객체
     * @return ResultData 객체
     */
    @ExceptionHandler({HttpRequestMethodNotSupportedException.class,
            HttpMediaTypeNotSupportedException.class,
            HttpMediaTypeNotAcceptableException.class, MissingServletRequestParameterException.class,
            ServletRequestBindingException.class, ConversionNotSupportedException.class,
            HttpMessageNotReadableException.class, MissingServletRequestPartException.class,
            NoHandlerFoundException.class, MethodArgumentTypeMismatchException.class})
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ResultData<?> handleMvcException(HttpServletRequest req, Exception e) {
        e.printStackTrace();
        logger.warn("MVC_EXCEPTION : {} | {}", req.getRequestURI(), e.getMessage());
        return new ResultData<>(Result.PARAM_ERROR, e.getMessage(), null);
    }

    /**
     * Spring @Valid 체크 오류 처리.
     *
     * @param req HttpServletRequest 객체
     * @param e   BindException 객체
     * @return ResultData 객체
     */
    @ExceptionHandler({BindException.class, MethodArgumentNotValidException.class})
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ResultData<?> handleMethodArgumentNotValidException(HttpServletRequest req,
                                                               BindException e) {
        String errors = e.getBindingResult().getFieldErrors().stream()
                .map(x -> x.getField() + ":" + x.getDefaultMessage())
                .collect(Collectors.joining(", "));
        logger.warn("INVALID_REQUEST : {} | {}", req.getRequestURI(), errors);
        return new ResultData<>(Result.PARAM_ERROR, errors, null);
    }

    /**
     * Spring @Valid 체크 오류 처리.
     * ControllerAspect에서 발생된 오류를 담당한다.
     *
     * @param req HttpServletRequest 객체
     * @param e   BindingResultException 객체
     * @return ResultData 객체
     */
    @ExceptionHandler({BindingResultException.class})
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ResultData<?> handleBindingResultException(HttpServletRequest req,
                                                      BindingResultException e) {
        String errors = e.getBindingResult().getFieldErrors().stream()
                .map(x -> x.getField() + ":" + x.getDefaultMessage())
                .collect(Collectors.joining(", "));
        logger.warn("INVALID_REQUEST : {} | {}", req.getRequestURI(), errors);
        return new ResultData<>(Result.PARAM_ERROR, errors, null);
    }

    /**
     * 파일 업로드 @ValidFile 체크 오류 처리.
     *
     * @param req HttpServletRequest 객체
     * @param e   BindException 객체
     * @return ResultData 객체
     */
    @ExceptionHandler({ConstraintViolationException.class})
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ResultData<?> handleConstraintViolationException(
            HttpServletRequest req,
            ConstraintViolationException  e
    ) {
        String errors = e.getMessage();
        logger.warn("INVALID_REQUEST : {} | {}", req.getRequestURI(), errors);
        return new ResultData<>(Result.PARAM_ERROR, errors, null);
    }

    /**
     * 비즈니스 로직 오류 처리.
     *
     * @param req HttpServletRequest 객체
     * @param e   BizException 객체
     * @return ResultData 객체
     */
    @ExceptionHandler(BizException.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public ResultData<?> handleBizException(HttpServletRequest req, BizException e) {
        logger.error("BIZ_EXCEPTION : {} | {}", req.getRequestURI(), e.getMessage());
        return new ResultData<>(Result.ERROR, e.getMessage(), null);
    }

    /**
     * 그 외 오류 처리.
     *
     * @param req HttpServletRequest 객체
     * @param e   Exception 객체
     * @return ResultData 객체
     */
    @ExceptionHandler({Exception.class})
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public ResultData<?> handleException(HttpServletRequest req, Exception e) {
        logger.error("EXCEPTION : {}", req.getRequestURI(), e);
        return new ResultData<>(Result.ERROR, e.getMessage(), null);
    }

    /**
     * 외부 API 통신 오류 처리.
     *
     * @param req HttpServletRequest 객체
     * @param e   ExternalApiException 객체
     * @return ResultData 객체
     */
    @ExceptionHandler(ExternalApiException.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public ResultData<?> handleExternalApiException(HttpServletRequest req, ExternalApiException e) {
        logger.error("EXTERNAL_API_EXCEPTION : {} | {}", req.getRequestURI(), e.getMessage());
        return new ResultData<>(Result.ERROR, e.getMessage(), null);
    }

}