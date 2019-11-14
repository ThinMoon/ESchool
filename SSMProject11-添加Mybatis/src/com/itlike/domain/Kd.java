package com.itlike.domain;

public class Kd {
    private Integer kd_id;
    private String kd_number;

    public Integer getKd_id() {
        return kd_id;
    }

    @Override
    public String toString() {
        return "Kd{" +
                "kd_id=" + kd_id +
                ", kd_number='" + kd_number + '\'' +
                ", kd_company='" + kd_company + '\'' +
                ", kd_name='" + kd_name + '\'' +
                ", kd_tel='" + kd_tel + '\'' +
                ", kd_adress='" + kd_adress + '\'' +
                ", kd_money='" + kd_money + '\'' +
                ", latest_time='" + latest_time + '\'' +
                ", kd_beizhu='" + kd_beizhu + '\'' +
                '}';
    }

    public void setKd_id(Integer kd_id) {
        this.kd_id = kd_id;
    }

    public String getKd_number() {
        return kd_number;
    }

    public void setKd_number(String kd_number) {
        this.kd_number = kd_number;
    }

    public String getKd_company() {
        return kd_company;
    }

    public void setKd_company(String kd_company) {
        this.kd_company = kd_company;
    }

    public String getKd_name() {
        return kd_name;
    }

    public void setKd_name(String kd_name) {
        this.kd_name = kd_name;
    }

    public String getKd_tel() {
        return kd_tel;
    }

    public void setKd_tel(String kd_tel) {
        this.kd_tel = kd_tel;
    }

    public String getKd_adress() {
        return kd_adress;
    }

    public void setKd_adress(String kd_adress) {
        this.kd_adress = kd_adress;
    }

    public Double getKd_money() {
        return kd_money;
    }

    public void setKd_money(Double kd_money) {
        this.kd_money = kd_money;
    }

    public String getLatest_time() {
        return latest_time;
    }

    public void setLatest_time(String latest_time) {
        this.latest_time = latest_time;
    }

    public String getKd_beizhu() {
        return kd_beizhu;
    }

    public void setKd_beizhu(String kd_beizhu) {
        this.kd_beizhu = kd_beizhu;
    }

    private String kd_company;
    private String kd_name;
    private String kd_tel;
    private String kd_adress;
    private Double kd_money;
    private String latest_time;
    private String  kd_beizhu;
}
