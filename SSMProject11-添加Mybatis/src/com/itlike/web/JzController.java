package com.itlike.web;


import com.itlike.domain.JianZhi;

import com.itlike.service.JzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class JzController {

    @Autowired
    private JzService jzService;

    @RequestMapping("/jianZhifabu")
    public void jianZhifabu(@RequestBody JianZhi jianzhi)
    {
        System.out.println(jianzhi);
        jzService.jianZhifabu(jianzhi);
    }

    @RequestMapping("/jianZhifabu1")
    public String jianZhifabu1( JianZhi jianzhi)
    {
        System.out.println(jianzhi);
        jzService.jianZhifabu(jianzhi);
        return "test";
    }


    @RequestMapping("/findJianZhiAll")
    @ResponseBody
    public List<JianZhi> findJianZhiAll(){
        System.out.println("来了");
        List<JianZhi> jianZhiAll = jzService.findJianZhiAll();
        System.out.println(jianZhiAll);
        return jianZhiAll;
    }
    @RequestMapping("/findJzByJid")
    @ResponseBody
    public JianZhi findJzByJid(int sid,Model model){
        System.out.println("来了");
        JianZhi jianZhiAll = jzService.findJzByJid(sid);
        model.addAttribute("jz",jianZhiAll);
        System.out.println(jianZhiAll);
        return jianZhiAll;
       /* redirect:Eschool/html/JzOrderDetails.jsp*/
    }



    @RequestMapping("/deleteJianZhi")

    void deleteJianZhiId(int s_id){
        jzService.deleteJianZhiId(s_id);
    }

    @RequestMapping("/updateJianZhi")
    @ResponseBody
    void updateJianZhiId(@RequestBody JianZhi jianZhi){
        jzService.updateJianZhiId( jianZhi);
    }

}
