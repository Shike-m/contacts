package com.contacts.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.contacts.domain.User;
import com.contacts.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	UserService userService;	
	
	@InitBinder
	public void strimBlank(WebDataBinder dataBinder) {
		StringTrimmerEditor strTrimmer = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, strTrimmer);
	}
	
	@GetMapping("/login")
	public String userLogin(Model model) {
		User user=new User();
		model.addAttribute("user", user);
		return "login";
	}
	
	@PostMapping("/login")
	public String userPage(@Valid @ModelAttribute("user") User user,BindingResult result,HttpSession httpSession) {
		
		if(result.hasErrors()) {			
			return "login";
		}		
		String username=user.getUsername();
		String password=user.getPassword();	
		System.out.println(username+":"+password);
		if(userService.loadUser(username)!=null) {
			String str=userService.loadUser(username).getPassword();	
			System.out.println(str);
			if(password.equals(str)) {
				httpSession.setAttribute("user", user);
				return "redirect:/lists";
			}else
				return "login";
		}else
			return "login";
	}
	
	@GetMapping("/logout")
	public String userLogout(HttpSession session) {
		session.removeAttribute("user");
		return "redirect:/login";
	}
	
	@GetMapping("/logon")
	public String userLogon(Model model) {
		User user=new User();
		model.addAttribute("user", user);
		return  "logon";
	}
	
	@PostMapping("/logon")
	public String saveUser(@Valid @ModelAttribute("user")User user,BindingResult result) {
		if(result.hasErrors()) {			
			return "logon";
		}
		if(userService.loadUser(user.getUsername())!=null) {
			//result.reject("The username has been registered");
			
			return "logon";
		}else {
			if(!user.getPassword().equals(user.getConfirmpassword())) {
				//result.rejectValue("comfirmPassword", "confirmError","Two passwords are not same!");
				return "logon";
			}
		}
		System.out.println("here");
		userService.saveUser(user);
		//rd.addAttribute("user", user);
		return "redirect:/login";
	}
	
}








