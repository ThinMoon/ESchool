/*package com.itlike.service;

public interface KdService {
}*/
package com.itlike.service;

import com.itlike.domain.Kd;

import java.util.List;

public interface KdService {
    void insertKd(Kd kd);

    Kd findKdId(int kid);
    List<Kd> findKdAll();

    void deleteKdId(int kid);

    void updateKdId(Kd kd);
}

