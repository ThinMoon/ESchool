package com.itlike.web;

import com.itlike.domain.User;
import com.itlike.service.UserService;
import org.apache.jasper.tagplugins.jstl.core.Redirect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CustomerController {

    /*注入业务层*/
    @Autowired
    private UserService userService;

    @RequestMapping("/deleteUser")
    public void deleteUser(Integer uid){
        userService.deleteUser(uid);
    }

    @RequestMapping("/updateUser")
    public void updateUser(@RequestBody User user ){
        System.out.println(user);
        userService.updateUser(user);
    }

    @RequestMapping("/addUser")
    public void addUser(@RequestBody User user){
        /*接收参数*/
        System.out.println("来到了web层"+user);
        /*把数据保存到数据库当中*/
        /*调用业务层 保存到数据库当中*/
        userService.saveUser(user);

    }

    @RequestMapping("/addUser1")
    public String addUser1( User user){
        /*接收参数*/
        System.out.println("来到了web层"+user);
        /*把数据保存到数据库当中*/
        /*调用业务层 保存到数据库当中*/
        userService.saveUser(user);
        return "redirect: Eschool/html/login.jsp";
    }



    @RequestMapping("/findAllUser")
    @ResponseBody
    public List<User>findAllUser(){
        return   userService.findAllUser();
    }
    @RequestMapping("/login")
    public String findUser(User user,Model model ){
        String pwd=user.getPassword();
        String utel=user.getU_tel();

        User user1= new User();
        user1=userService.findUser(utel);
        System.out.println();


        if (pwd.equals(user1.getPassword())){

            if("867554058".equals(user1.getU_tel())){
                return "redirect: backManage/html/back.jsp";
            }
            return "redirect: Eschool/html/kdTakenList.jsp";

        }
        else {
            return "false";
        }
      /*  return (pwd==user1.getPassword())?"success":"false";*/
    }

}
