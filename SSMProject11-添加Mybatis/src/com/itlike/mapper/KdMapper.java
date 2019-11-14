/*package com.itlike.mapper;

public interface KdMapper {
}*/
package com.itlike.mapper;

import com.itlike.domain.Kd;

import java.util.List;

public interface KdMapper {
    void insertKd(Kd kd);

    Kd findKdId(int kid);
    List<Kd> findKdAll();

    void deleteKdId(int kid);

    void updateKdId(Kd kd);
}
