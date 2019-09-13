package com.RS.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.RS.modal.User;
import com.RS.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	@Autowired
	private UserService userService;

	public String hello() {

		return "";
	}
	

}
