package shoesstore.validator;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import shoesstore.entities.User;
import shoesstore.service.UserService;

@Component
public class UserValidate implements Validator {

	@Autowired
	private UserService<User, Integer> userService;
	
	
	@Autowired
	HttpSession session;
	 
	 @Autowired
	 HttpServletRequest request;

	@Override
	public boolean supports(Class<?> aClass) {
		return User.class.equals(aClass);
	}

	@Override
	public void validate(Object target, Errors errors) {
		User user = (User) target;
		
		String captcha = session.getAttribute("captcha_security").toString();
		String verifyCaptcha = user.getCaptcha();
		
	
		List<User> userEmail = userService.findByProperty("email", user.getEmail());
		  List<User> userPhone = userService.findByProperty("phone", user.getPhone());
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");
		if (user.getName().length() < 6 || user.getName().length() > 32) {
			errors.rejectValue("name", "Size.userForm.name");
		}

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");

		 if (userEmail != null &&
				  !userEmail.isEmpty()) {
	            errors.rejectValue("email", "Duplicate.userForm.email");
	        }
		 
		
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "NotEmpty");
		if ( userPhone != null &&
				  !userPhone.isEmpty()) {
            errors.rejectValue("email", "Duplicate.userForm.phone");
        }
		
		if ( !(captcha.equals(verifyCaptcha))) {
          errors.rejectValue("captcha", "Wrong.userForm.captcha");
      }		
		
		
	
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
		if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
			errors.rejectValue("password", "Size.userForm.password");
		}

	

	}

}
