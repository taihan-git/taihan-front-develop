package kr.co.taihan.front.common.exception;

public class ExternalApiException extends BizException {

  public ExternalApiException() {
    super("EXTERNAL_API_EXCEPTION");
  }

  public ExternalApiException(String message) {
    super(message);
  }

  public ExternalApiException(String message, Throwable cause) {
    super(message, cause);
  }
}
