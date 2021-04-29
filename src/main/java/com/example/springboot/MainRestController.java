package com.example.springboot;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainRestController {

    @Value("${testuser}")
    private String name;

    @GetMapping("/demo")
    public String home() {
        return "test user name is " + name;
    }
}
