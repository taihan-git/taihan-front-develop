package kr.co.taihan.front.common.annotation;

import org.springframework.web.multipart.MultipartFile;

import javax.validation.Constraint;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import javax.validation.Payload;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = {ValidFile.Validator.class})
public @interface ValidFile {

    String message() default "허용된 확장자 > ";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

    String[] allowedExtensions();

    class Validator implements ConstraintValidator<ValidFile, MultipartFile> {

        private String message;
        private List<String> allowedExtensions;

        @Override
        public void initialize(ValidFile constraintAnnotation) {
            this.message = constraintAnnotation.message();
            this.allowedExtensions = Arrays.asList(constraintAnnotation.allowedExtensions());
        }

        @Override
        public boolean isValid(MultipartFile multipartFile, ConstraintValidatorContext context) {

            if (multipartFile == null) {
                return true;
            }

            String fileName = multipartFile.getOriginalFilename();
            String fileExt = Objects.requireNonNull(fileName).substring(fileName.lastIndexOf(".") + 1).toLowerCase();

            boolean isValid = this.allowedExtensions.contains(fileExt);

            if (!isValid) {
                context.disableDefaultConstraintViolation();
                context.buildConstraintViolationWithTemplate(message.concat(this.allowedExtensions.toString()))
                        .addConstraintViolation();
            }

            return isValid;
        }
    }
}
