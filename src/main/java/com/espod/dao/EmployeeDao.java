package com.espod.dao;

import java.util.List;
import java.util.Map;

import com.espod.entity.Employee;
import com.espod.entity.Post;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeDao {

    public List<Post> findEmployees(Map<String, Object> map);

    public Integer getCount(Map<String, Object> map);

    public Integer addEmployee(Employee employee);

    public Integer updateEmployee(Employee employee);

    public Integer deleteEmployee(String id);
}
