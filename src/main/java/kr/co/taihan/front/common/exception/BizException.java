package kr.co.taihan.front.common.exception;

public class BizException extends RuntimeException {

  private static final long serialVersionUID = 1487479499048662221L;

  private static final String DEFAULT_MESSAGE = "시스템 오류입니다. 관리자에게 문의 바랍니다.";

  public BizException() {
    super(DEFAULT_MESSAGE);
  }

  public BizException(String message, Throwable cause) {
    super(message, cause);
  }

  public BizException(String message) {
    super(message);
  }

  public BizException(Throwable cause) {
    super(cause);
  }
}
