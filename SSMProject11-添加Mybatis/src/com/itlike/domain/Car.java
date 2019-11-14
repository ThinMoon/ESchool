package com.itlike.domain;

public class Car {
    private Integer car_id;
    private Boolean car_style;
    private String car_number;
    private String car_start;
    private String car_stop;

    @Override
    public String toString() {
        return "Car{" +
                "car_id=" + car_id +
                ", car_style=" + car_style +
                ", car_number='" + car_number + '\'' +
                ", car_start='" + car_start + '\'' +
                ", car_stop='" + car_stop + '\'' +
                ", car_start_time='" + car_start_time + '\'' +
                ", car_tel='" + car_tel + '\'' +
                ", car_money=" + car_money +
                ", car_beizhu='" + car_beizhu + '\'' +
                '}';
    }

    private String car_start_time;

    public Integer getCar_id() {
        return car_id;
    }

    public void setCar_id(Integer car_id) {
        this.car_id = car_id;
    }

    public Boolean getCar_style() {
        return car_style;
    }

    public void setCar_style(Boolean car_style) {
        this.car_style = car_style;
    }

    public String getCar_number() {
        return car_number;
    }

    public void setCar_number(String car_number) {
        this.car_number = car_number;
    }

    public String getCar_start() {
        return car_start;
    }

    public void setCar_start(String car_start) {
        this.car_start = car_start;
    }

    public String getCar_stop() {
        return car_stop;
    }

    public void setCar_stop(String car_stop) {
        this.car_stop = car_stop;
    }

    public String getCar_start_time() {
        return car_start_time;
    }

    public void setCar_start_time(String car_start_time) {
        this.car_start_time = car_start_time;
    }

    public String getCar_tel() {
        return car_tel;
    }

    public void setCar_tel(String car_tel) {
        this.car_tel = car_tel;
    }

    public Double getCar_money() {
        return car_money;
    }

    public void setCar_money(Double car_money) {
        this.car_money = car_money;
    }

    public String getCar_beizhu() {
        return car_beizhu;
    }

    public void setCar_beizhu(String car_beizhu) {
        this.car_beizhu = car_beizhu;
    }

    private String car_tel;
    private Double car_money;
    private String car_beizhu;


}
