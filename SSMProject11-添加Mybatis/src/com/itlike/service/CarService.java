package com.itlike.service;

import com.itlike.domain.Car;

import java.util.List;

public interface CarService {

   public  void insertCar(Car car);


    Car findByCarId(int carId);

    void deleteCar(Integer cid);

    List<Car> findAllCar();

    void updateCar(Car car);

}
