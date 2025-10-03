package com.nt.service;

import java.util.List;

import com.nt.entity.Employee;

public interface IEmployeeMgmtService {

	public List<Employee> showAllEmployees();
	public String registerEmployee(Employee emp);
	public Employee getEmployeeById(int id);
	public String updateEmployee(Employee emp);
	public String deleteEmployee(int id);
}
