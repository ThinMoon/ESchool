package com.itlike.service;

import com.itlike.domain.Car;
import com.itlike.mapper.CarMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("CarService")
@Transactional
public class CarServiceImpl implements CarService {
    @Autowired
    private CarMapper carMapper;
    @Override
    public void insertCar(Car car) {
        carMapper.insertCar(car);
    }

    @Override
    public Car findByCarId(int carId) {
        System.out.println("服务层");
        System.out.println(carId);
        Car cars = new Car();
        cars=carMapper.findByCarId(carId);

        return cars;
    }

    @Override
    public void deleteCar(Integer cid) {
        carMapper.deleteCar(cid);
    }


    @Override
    public List<Car> findAllCar() {

       return carMapper.findAllCar();

    }

    @Override
    public void updateCar(Car car) {
        carMapper.updateCar(car);
    }

}
