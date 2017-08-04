package com.espod.dao;

import java.util.List;
import java.util.Map;

import com.espod.entity.Department;
import org.springframework.stereotype.Repository;

@Repository
public interface DepartmentDao {

    public List<Department> findDepartments(Map<String, Object> map);

    public Integer getCount(Map<String, Object> map);

    public Integer addDepartment(Department department);

    public Integer updateDepartment(Department department);

    public Integer deleteDepartment(Integer id);

}
