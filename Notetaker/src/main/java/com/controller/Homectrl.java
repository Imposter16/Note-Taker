package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class Homectrl {
	@RequestMapping("/home")
	public String home(Model m) {
		String str="Saurabh";
		m.addAttribute("name", str);
		return "home";
	}
}
