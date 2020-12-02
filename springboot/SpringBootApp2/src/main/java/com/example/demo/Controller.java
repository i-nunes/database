package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
	@RequestMapping("/")
	public String index() {
		return "Aprender a desenvolver bem os endpoints integrados com CRUD do banco de dados";
	}
}
