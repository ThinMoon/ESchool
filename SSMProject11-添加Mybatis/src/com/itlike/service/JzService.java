package com.itlike.service;


import com.itlike.domain.JianZhi;

import java.util.List;

public interface JzService {

    void jianZhifabu(JianZhi jianzhi);
    List<JianZhi> findJianZhiAll();

    void deleteJianZhiId(int s_id);

    void updateJianZhiId(JianZhi jianZhi);

    JianZhi findJzByJid(int sid);

}
