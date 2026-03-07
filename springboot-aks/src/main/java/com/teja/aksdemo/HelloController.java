package com.teja.aksdemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String hello() {
        return "Hello Tejaswi Take care of siva 🚀 Deployed to AKS Successfully!";
    }
}
