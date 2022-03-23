package spring.mvc.hibernate.service;

import spring.mvc.hibernate.entity.Employee;

import java.util.List;

public interface EmployeeService {

    public List<Employee> getAllEmployees();
}
