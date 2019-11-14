package com.itlike.web;

import com.itlike.domain.Car;
import com.itlike.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller

public class CarController {

    @Autowired
    private CarService carService;

    //后台添加顺风车订单
    @RequestMapping("/insertCar")
    public void insertCar(@RequestBody Car car){
        System.out.println("来了");
        System.out.println(car);
        carService.insertCar(car);
    }
    //前台添加顺风车订单
    @RequestMapping("/insertCar1")
    public String insertCar1(Car car){
        System.out.println("来了");
        System.out.println(car);
        carService.insertCar(car);
        return "test";
    }

    //删除顺风车订单
    @RequestMapping("/deleteCar")
    public void deleteCar(Integer cid){
        System.out.println("删除");
        carService.deleteCar(cid);
    }
    //修改顺风车订单
    @RequestMapping("/updateCar")
    public void updateCar(@RequestBody Car car){

        System.out.println("修改");
        carService.updateCar(car);
    }

    //通过id查询顺风车订单
    @RequestMapping("/findByCategoryId")
    @ResponseBody
    public Car findByCarId(int carId){
        Car car = new Car();
        car = carService.findByCarId(carId);
        System.out.println(car);
        return car;
    }
    //查询所有顺风车订单
    @RequestMapping("/findAllCar")
    @ResponseBody
    public List<Car> findAllCar(){
        List<Car> allCar = carService.findAllCar();
        System.out.println(allCar);
        return allCar;
    }

}
