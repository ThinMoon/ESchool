package com.itlike.service;


import com.itlike.domain.JianZhi;
import com.itlike.mapper.JzMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service("JzService")
@Transactional
public class JzServiceImpl implements JzService {

    @Autowired
    JzMapper jianZhiMapper;

    @Override
    public void jianZhifabu(JianZhi jianzhi) {
        jianZhiMapper.jianZhifabu(jianzhi);
    }
    @Override
    public List<JianZhi> findJianZhiAll() {
        return jianZhiMapper.findJianZhiAll();
    }

    @Override
    public void deleteJianZhiId(int s_id) {
        jianZhiMapper.deleteJianZhiId(s_id);
    }

    @Override
    public void updateJianZhiId(JianZhi jianZhi) {
        jianZhiMapper.updateJianZhiId(jianZhi);
    }

    @Override
    public JianZhi findJzByJid(int sid) {

        return jianZhiMapper.findJzByJid(sid);
    }
}
