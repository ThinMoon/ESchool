/*package com.itlike.service;

import com.itlike.mapper.KdMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("KdService")
@Transactional
public class KdServiceImpl implements KdService {
    @Autowired
    private KdMapper kdMapper;
}*/
package com.itlike.service;

import com.itlike.domain.Kd;
import com.itlike.mapper.KdMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("KdService")
@Transactional
public class KdServiceImpl implements KdService {
    @Autowired
    private KdMapper kdMapper;
    @Override
    public void insertKd(Kd kd) {
        kdMapper.insertKd(kd);
    }

    @Override
    public Kd findKdId(int kid) {
        kdMapper.findKdId(kid);
        return null;
    }

    @Override
    public List<Kd> findKdAll() {

        return kdMapper.findKdAll();
    }

    @Override
    public void deleteKdId(int kid) {
        kdMapper.deleteKdId(kid);
    }

    @Override
    public void updateKdId(Kd kd) {

        kdMapper.updateKdId(kd);
    }
}

