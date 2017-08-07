package com.espod.service.impl;

import java.util.List;
import java.util.Map;

import com.espod.dao.EmployeeDao;
import com.espod.entity.Employee;
import com.espod.entity.Post;
import com.espod.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeDao employeeDao;

    public List<Post> findEmployees(Map<String, Object> map) {

        return employeeDao.findEmployees(map);
    }

    public Integer getCount(Map<String, Object> map) {

        return employeeDao.getCount(map);
    }

    public Integer addEmployee(Employee employee) {
        Integer flag = null;
        try {
            flag = employeeDao.addEmployee(employee);
        } catch (Exception e) {
            throw new RuntimeException();
        }

        return flag;
    }

    public Integer updateEmployee(Employee employee) {

        return employeeDao.updateEmployee(employee);
    }

    public Integer deleteEmployee(String id) {

        return employeeDao.deleteEmployee(id);
    }

}
