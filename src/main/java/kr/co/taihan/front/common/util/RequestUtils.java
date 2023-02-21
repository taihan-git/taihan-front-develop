package kr.co.taihan.front.common.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.Objects;

@Slf4j
public class RequestUtils {

    /**
     * 현재 요청의 HttpServletRequest를 구한다.
     *
     * @return HttpServletRequest httpServletRequest 객체
     */
    public static HttpServletRequest getRequest() {

        RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
        if (Objects.isNull(requestAttributes)
                || !(requestAttributes instanceof ServletRequestAttributes)) {
            return null;
        }
        return ((ServletRequestAttributes) requestAttributes).getRequest();
    }

    /**
     * 현재 요청의 HttpServletResponse를 구한다.
     *
     * @return HttpServletResponse
     */
    public static HttpServletResponse getResponse() {

        RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
        if (Objects.isNull(requestAttributes)
                || !(requestAttributes instanceof ServletRequestAttributes)) {
            return null;
        }
        return ((ServletRequestAttributes) requestAttributes).getResponse();
    }

    /**
     * request 헤더에서 특정 이름의 값을 구한다.
     *
     * @param name 헤더 명
     * @return String 헤더 값
     */
    public static String getRequestHeader(String name) {

        HttpServletRequest httpServletRequest = getRequest();
        if (httpServletRequest != null) {
            return httpServletRequest.getHeader(name);
        } else {
            return null;
        }
    }

    /**
     * request 쿠키 특정 이름의 값을 구한다.
     *
     * @param name 쿠키 명
     * @return String 쿠키 값
     */
    public static String getRequestCookie(String name) {
        try {
            return Arrays.stream(Objects.requireNonNull(getRequest()).getCookies())
                    .filter(c -> c.getName().equals(name))
                    .findFirst()
                    .map(Cookie::getValue)
                    .orElse(null);
        } catch (NullPointerException e) {
            logger.debug("COOKIE_IS_EMPTY");
        }
        return null;
    }
}
