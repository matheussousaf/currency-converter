package com.dollar.conversion.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan("com.dollar.conversion")
@EnableWebMvc
public class RootConfig {

}
