package com.example.kongam;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication(exclude = SecurityAutoConfiguration.class)
public class KongamApplication {

    public static void main(String[] args) {
        SpringApplication.run(KongamApplication.class, args);
    }

}
