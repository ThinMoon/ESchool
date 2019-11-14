package com.itlike.domain;

public class JianZhi {
    private Integer s_id;
    private Integer need_person;

    public Integer getS_id() {
        return s_id;
    }

    @Override
    public String toString() {
        return "JianZhi{" +
                "s_id=" + s_id +
                ", need_person=" + need_person +
                ", work_money=" + work_money +
                ", s_name='" + s_name + '\'' +
                ", s_adress='" + s_adress + '\'' +
                ", s_tel='" + s_tel + '\'' +
                ", work_time='" + work_time + '\'' +
                ", work_content='" + work_content + '\'' +
                ", beizhu='" + beizhu + '\'' +
                '}';
    }

    public void setS_id(Integer s_id) {
        this.s_id = s_id;
    }

    public Integer getNeed_person() {
        return need_person;
    }

    public void setNeed_person(Integer need_person) {
        this.need_person = need_person;
    }

    public Double getWork_money() {
        return work_money;
    }

    public void setWork_money(Double work_money) {
        this.work_money = work_money;
    }

    public String getS_name() {
        return s_name;
    }

    public void setS_name(String s_name) {
        this.s_name = s_name;
    }

    public String getS_adress() {
        return s_adress;
    }

    public void setS_adress(String s_adress) {
        this.s_adress = s_adress;
    }

    public String getS_tel() {
        return s_tel;
    }

    public void setS_tel(String s_tel) {
        this.s_tel = s_tel;
    }

    public String getWork_time() {
        return work_time;
    }

    public void setWork_time(String work_time) {
        this.work_time = work_time;
    }

    public String getWork_content() {
        return work_content;
    }

    public void setWork_content(String work_content) {
        this.work_content = work_content;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
    }

    private Double work_money;
    private String s_name;
    private String s_adress;
    private String s_tel;
    private String work_time;
    private String work_content;
    private String beizhu;
}
