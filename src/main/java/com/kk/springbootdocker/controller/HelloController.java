package com.kk.springbootdocker.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
@CrossOrigin()
public class HelloController {
    @RequestMapping({"/testuri"})
    public String hello() {

        String s = LocalDateTime.now().toString();

        return "Hello World !! Rest Controller is working ... " + s;
    }
}