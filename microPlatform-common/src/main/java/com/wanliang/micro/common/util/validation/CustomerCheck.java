//package com.wanliang.micro.common.util.validation;
//
//import javax.validation.Constraint;
//import javax.validation.Payload;
//import java.lang.annotation.*;
//
//@Documented
//@Constraint(validatedBy = CustomerCheckValidator.class)
//@Target( { ElementType.TYPE })
//@Retention(RetentionPolicy.RUNTIME)
//public @interface CustomerCheck {
//
//	String message() default "";
//
//	Class<?>[] groups() default {};
//
//	Class<? extends Payload>[] payload() default {};
//
//}