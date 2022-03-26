package spring.mvc.hibernate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import spring.mvc.hibernate.entity.Employee;
import spring.mvc.hibernate.service.EmployeeService;

import javax.validation.Valid;
import java.util.List;

@Controller
public class MyController {

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/")
    public String showAllEmployees(Model model) {

        List<Employee> allEmployees = employeeService.getAllEmployees();
        model.addAttribute("allEmps", allEmployees);

        return "all-employees";
    }

    @RequestMapping("/addNewEmployee")
    public String addNewEmpolyee(Model model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "employee-info";
    }

    @RequestMapping("saveEmployee")
    public String saveEmployee(@Valid @ModelAttribute("employee") Employee employee,
                               BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return "employee-info";
        } else {
            employeeService.saveEmployee(employee);
            return "redirect:/";
        }
    }
    @RequestMapping("/updateInfo")
    public String updateEmployee(@RequestParam("empId") int id, Model model) {
        Employee employee = employeeService.getEmployee(id);
        model.addAttribute("employee", employee);

        return "employee-info";
    }
    @RequestMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam("empId") int id, Model model) {

        employeeService.deleteEmployee(id);

        return "redirect:/";
    }
}
