package com.caliber.Authentication.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.caliber.Authentication.service.UserService;

@Controller
public class AuthenticationController {

	@Autowired
	public UserService userService;

	@GetMapping(value = "/register")
	public String register() {
		return "register";
	}

	@PostMapping(value = "/register")
	public String registrationPage(@RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "password", required = false) String password,
			@RequestParam(value = "emailid", required = false) String emailid, ModelMap model) {

		System.out.println(username + " " + password);
		boolean status = userService.savetoDB(username, password, emailid, model);
		if (status) {
			return "redirect:login";
		} else {
			return "register";
		}
	}

	@GetMapping(value = "/login")
	public String loginPage() {
		return "login";
	}

	@PostMapping(value = "/validateUserName")
	public @ResponseBody Integer loginPageVerification(@RequestBody String user, ModelMap model) {
		System.out.println(user);
		int inputToken = userService.validateUsername(user);
		int counter = userService.returnCounter(user);

		if (counter < 3 || counter == 4) {
			if (inputToken > 0) {
				System.out.println("User Found Password Length:" + inputToken);
				return inputToken;
			} else {
				System.out.println("User Not Found Password Length:" + inputToken);
				return inputToken;
			}
		} else if (counter == 3) {
			System.out.println("Blocked page yee");
		//	userService.sendEmail(user);
		//	int count = userService.countdown(user);
			return -1;
		} else {
			model.put("errormsg", "Your account has been blocked contact to administrator");
			return -2;
		}
	}

	/* Dynamic Token Initialization and Setup */

	@PostMapping(value = "/login")
	public String userLogin(@RequestParam(value = "hiddenUserName", required = false) String username,
			@RequestParam(value = "token1", required = false) String token1,
			@RequestParam(value = "token2", required = false) String token2,
			@RequestParam(value = "token3", required = false) String token3,
			@RequestParam(value = "token4", required = false) String token4) {
		System.out.println("UserName:" + username);

		String token = token1 + token2 + token3 + token4;
		System.out.println("Token:" + token);

		boolean check = userService.checkpassword(username, token);

		if (check) {
			System.out.println("Password Verified Succesfully");
			return "success";
		} else {
			System.out.println("Password Not Verified");

			int counter = userService.countdown(username);
			if (counter == 3) { //// at 3rd attempt account gets blocked
				// here we can delete account or mark one flag as account blocked.
				userService.sendEmail(username);
				//int c= userService.countdown(username);

				return "redirect:blocked";
			} else if (counter == 4) {
				userService.sendEmail(username);
				return "login";
			} else if (counter == 5) {
				userService.accountblocked(username);
				return "login";
			} else {
				return "login";
			}
		}
	}

	@RequestMapping(value = "/success")
	public String successPage() {
		return "success";
	}

	@RequestMapping(value = "/blocked")
	public String blockAccountPage() {

		return "blocked";
	}

}
