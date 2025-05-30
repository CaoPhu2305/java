package com.EventManagement.java.service.validator;

import com.EventManagement.java.domain.client.model.Work;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class CreateWorkValidator implements ConstraintValidator<CreateWorkCheck, Work>  {

    @Override
    public boolean isValid(Work work, ConstraintValidatorContext context) {
        
        boolean valid = true;

        if(work.getNameWork() == null || work.getNameWork().trim().isEmpty()) {
            context.buildConstraintViolationWithTemplate("tên công việc không thể để trống ")
            .addPropertyNode("nameWork")
            .addConstraintViolation()
            .disableDefaultConstraintViolation();
            valid = false;
        }

      
        // if(work.getPrice() < 0 || String.valueOf(work.getPrice()).trim().isEmpty() ){
        //     context.buildConstraintViolationWithTemplate("tiền bạn không thể là số âm hoặc để trống")
        //     .addPropertyNode("price")
        //     .addConstraintViolation()
        //     .disableDefaultConstraintViolation();
        //     valid = false;
        // }

      return valid;
    }
    
}
