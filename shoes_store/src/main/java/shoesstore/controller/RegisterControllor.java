package shoesstore.controller;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.security.crypto.password.PasswordEncoder;

import shoesstore.dao.RoleDao;
import shoesstore.dao.UserDao;
import shoesstore.entities.Role;
import shoesstore.entities.User;
import shoesstore.service.SecurityServiceImpl;
import shoesstore.validator.UserValidate;

@Controller
public class RegisterControllor {
	@Autowired
	private UserDao<User, Integer> userDao;
	@Autowired
	private RoleDao<Role, Integer> roleDao;

	@Autowired
	private UserValidate userValidator;


	@Autowired
	PasswordEncoder crypt;

	@GetMapping("/register")
	public String Formlogin(Model model, HttpSession session) {
		model.addAttribute("customer", new User());
		return "auth/register";
	}

	@PostMapping("/register")
	public String register(@ModelAttribute("customer") User customer, Model model, BindingResult bindingResult) {
		
		userValidator.validate(customer, bindingResult);
		
		
		if (bindingResult.hasErrors()) {
			return "auth/register";
		}

		else {
			customer.setPassword(crypt.encode(customer.getPassword()));
			MultipartFile file = customer.getFile();
			String fileName = StringUtils.cleanPath(file.getOriginalFilename());
			if (fileName.contains("..")) {
				System.out.println("not a a valid file");
			}
			try {
				customer.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
			} catch (IOException e) {
				e.printStackTrace();
			}
			List<Role> role = roleDao.findByProperty("name", "CUSTOMER");
			System.out.println("Vai tro trong trang la" + role);
			customer.setRole(role.get(0));
			userDao.insert(customer);
			return "redirect:login";
		}

	}
}
