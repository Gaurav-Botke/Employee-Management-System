package com.nt.service;

import java.util.List;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.entity.Employee;
import com.nt.repository.IEmployeeRepository;

@Service
public class EmployeeMgmtServiceImpl implements IEmployeeMgmtService {

	@Autowired
	private IEmployeeRepository empRepo;
	
	@Override
	public List<Employee> showAllEmployees() {
		 List<Employee> list = StreamSupport.stream(empRepo.findAll().spliterator(), false).toList();
          //return list.stream().sorted().toList(); // perform natural sorting
		 //sorting based on ID
 		 return list.stream().sorted((emp1,emp2)->emp1.getId().compareTo(emp2.getId())).toList();
	}
	
    @Override
	public String registerEmployee(Employee emp) {
		// use service 
    	  int idVal = empRepo.save(emp).getId();
		return "Employee is registerd with give Id value :: "+idVal;
	}
    
    @Override
    public Employee getEmployeeById(int id) {
    	
    	Employee emp = empRepo.findById(id).orElseThrow(()-> new IllegalArgumentException());
     	return emp;
    }
    
    @Override
    public String updateEmployee(Employee emp) {
    	return "Employee updated Id :: "+empRepo.save(emp).getId();
    
    }
    @Override
    public String deleteEmployee(int id) {
    	  empRepo.deleteById(id);
    	return "Employee deleted Id :: "+id;
    }
    
    

}
