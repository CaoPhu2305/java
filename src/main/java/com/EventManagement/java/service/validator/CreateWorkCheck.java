package com.EventManagement.java.service.validator;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

@Constraint(validatedBy = CreateWorkValidator.class)
@Target({ ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface CreateWorkCheck {

    String message() default "Fields values don't match!";

    Class<?>[] groups() default {};

    Class< ? extends Payload >[]  payload() default {};
    
}

