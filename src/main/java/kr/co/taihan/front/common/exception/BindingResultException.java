package kr.co.taihan.front.common.exception;

import lombok.Getter;
import org.springframework.validation.BindingResult;

@Getter
public class BindingResultException extends BizException {

  private BindingResult bindingResult;

  public BindingResultException(BindingResult bindingResult) {
    this.bindingResult = bindingResult;
  }
}
