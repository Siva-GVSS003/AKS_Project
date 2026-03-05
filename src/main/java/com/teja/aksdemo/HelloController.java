package com.teja.aksdemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String hello() {
        return "Hello Mr.Siva, do your work !! 🚀 Deployed to AKS Successfully!";
    }
}
