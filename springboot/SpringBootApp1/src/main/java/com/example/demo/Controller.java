package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

// RestController - controller de uma REST API (API que envia recursos para o frontend)
@RestController
// Interface WebMvcConfigurer
public class Controller {
	// RequestMapping - Está anotação mapeia os requests HTTPS para métodos de tratamento de MVC e o Rest controller
	@RequestMapping("/")
	public String index() {
		return "Persistência e Atenção aos detalhes";
	}
}
