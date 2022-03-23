package spring.mvc.hibernate.dao;

import spring.mvc.hibernate.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    public List<Employee> getAllEmployees();
}
