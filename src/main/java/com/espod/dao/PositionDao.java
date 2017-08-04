package com.espod.dao;

import java.util.List;
import java.util.Map;

import com.espod.entity.Position;
import org.springframework.stereotype.Repository;

@Repository
public interface PositionDao {

    public List<Position> findPositions(Map<String, Object> map);

    public Integer getCount(Map<String, Object> map);

    public Integer addPosition(Position position);

    public Integer updatePosition(Position position);

    public Integer deletePosition(Integer id);
}
