/*package com.itlike.web;

import com.itlike.service.KdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class KdController {
    @Autowired
    private KdService kdService;
}*/
package com.itlike.web;

import com.itlike.domain.Car;
import com.itlike.domain.Kd;
import com.itlike.service.CarService;
import com.itlike.service.KdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller

public class KdController {

    @Autowired
    private KdService KdService;
    @RequestMapping("/kdfabu")
    public String kdfabu(Kd kd){
        System.out.println("caonima");
        System.out.println(kd);
        Kd kd1 = new Kd();
        kd1.setKd_adress("fzu");
        kd1.setKd_beizhu("福州大学10");
        kd1.setKd_name("湖城于");

        KdService.insertKd(kd);
        return "test";
    }

    @RequestMapping("/insertKd")
    public void insertKd(@RequestBody Kd kd){
        System.out.println("caonima");
        System.out.println(kd);
        KdService.insertKd(kd);
    }

    @RequestMapping("/findKdId")
    @ResponseBody
    public Kd findKdId(int kid){
        System.out.println("caonima");
        System.out.println(kid);
        Kd kd = new Kd();
        kd = KdService.findKdId(kid);
        System.out.println(kd);
        return kd;

    }
    @RequestMapping("/findKdAll")
    @ResponseBody
    public List<Kd> findKdAll(){
        System.out.println("caonima");
        List<Kd> kdAll = KdService.findKdAll();
        System.out.println(kdAll);
        return kdAll;
    }
    @RequestMapping("/deleteKdId")
    public void deleteKdId(int kid){
        System.out.println("caonima");
        KdService.deleteKdId(kid);
    }
    @RequestMapping("/updateKdId")
    @ResponseBody
    public void updateKdId(@RequestBody Kd kd){
        System.out.println("caonima");
        System.out.println(kd);
        KdService.updateKdId(kd);
    }
}

