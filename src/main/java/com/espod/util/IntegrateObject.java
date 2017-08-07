package com.espod.util;

import com.espod.entity.Department;
import com.espod.entity.Employee;
import com.espod.entity.Position;

public class IntegrateObject {
    public static void genericAssociation(Integer dept_id, Integer pos_id, Employee employee) {
        Department department = new Department();
        department.setId(dept_id);
        Position position = new Position();
        position.setId(pos_id);
        employee.setDepartment(department);
        employee.setPosition(position);
    }
}
