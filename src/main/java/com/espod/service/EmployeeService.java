package com.espod.service;

import com.espod.entity.Employee;
import com.espod.entity.Post;

import java.util.List;
import java.util.Map;

public interface EmployeeService {

    public List<Post> findEmployees(Map<String, Object> map);

    public Integer getCount(Map<String, Object> map);

    public Integer addEmployee(Employee employee);

    public Integer updateEmployee(Employee employee);

    public Integer deleteEmployee(String id);
}
