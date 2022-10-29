package com.kk.springbootdocker.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin()
public class HelloController {
    @RequestMapping({"/testuri"})
    public String hello() {
        return "Hello World !! Rest Controller is working ...";
    }
}