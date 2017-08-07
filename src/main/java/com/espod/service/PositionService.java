package com.espod.service;

import com.espod.entity.Position;

import java.util.List;
import java.util.Map;

public interface PositionService {

    public List<Position> findPositions(Map<String, Object> map);

    public Integer getCount(Map<String, Object> map);

    public Integer addPosition(Position position);

    public Integer updatePosition(Position position);

    public Integer deletePosition(Integer id);
}
