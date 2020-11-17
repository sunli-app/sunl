package com.springboot.mybatis.controller;

import com.springboot.mybatis.entity.User;
import com.springboot.mybatis.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/demo")
@RestController
//@Controller
public class UserController {

    @Autowired
    public UserService userService;

    @RequestMapping("/user/{id}")
    public @ResponseBody String getUserById(@PathVariable("id") Integer id){
        return userService.getUserById(id).toString();
    }

    @RequestMapping("/user")
    public @ResponseBody String getAllUser(){
        return userService.getAllUser().toString();
    }

    @RequestMapping("/abc")
    public String login(){
        return "index";
    }

    @RequestMapping("/index")
    public String users(){
        return "success";
    }
}
