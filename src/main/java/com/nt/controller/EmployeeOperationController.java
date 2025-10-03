package com.nt.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nt.entity.Employee;
import com.nt.service.IEmployeeMgmtService;

@Controller
public class EmployeeOperationController {
 
	@Autowired
	private IEmployeeMgmtService empService;
	
	@GetMapping("/")
	public String showHomePage() {
		return "welcome";
	}
	
	@GetMapping("/report")
	public String showReport(Map<String, Object> map) {
		try {
			//use service
			List<Employee> list  = empService.showAllEmployees();
			//kee the result in shared memory
			map.put("empList", list);
			//System.out.println(list);
			//return LVm
			return "show_report";
		} catch (Exception e) {
			e.printStackTrace();
			map.put("errorMsg", e.getMessage());
			return"error";
		}
	}
	
	@GetMapping("/register")// form for launching for addEmployee operation
	public String registerEmployeeForm(@ModelAttribute("emp") Employee emp) {
		//returen LVN
		return "addEmployee";
	}
	
	// CODE THAT GENERATE A DOUBLE POSTING PROBLEM
	/*
	@PostMapping("/register")// form  for addEmployee but  that generate a double posting problem
	public String registerEmployee(Map<String, Object> map,@ModelAttribute("emp") Employee emp) {
		try {
			//use service
			String msg = empService.registerEmployee(emp);
			List<Employee> list = empService.showAllEmployees();
			// map means regular scope
			map.put("resultMsg", msg); 
			map.put("empList", list);
			//return LVN
			return"report";
		} catch (Exception e) {
			e.printStackTrace();
			map.put("errorMsg", e.getMessage()); //  regular scope
			return"error";
		}
	}
	*/
	
	// HERE WE ARE SOLVING A DOUBLE POSTING PROBLEM BY USING PRG (POST-REDIRECT-GET) PATTERN
	
	@PostMapping("/register") // form for submission for addEmployee operation by using (POST- REDIRECT-GET) PRG Patteren
	                          //Problem solve
	public String registerEmployee(RedirectAttributes attrs, @ModelAttribute("emp") Employee emp) {
		try { 
			// use service
			String msg = empService.registerEmployee(emp);

			attrs.addFlashAttribute("resultMsg", msg); // addFlashAttribute means redirection scope
			// return LVN
			return "redirect:report";
		}
		catch (Exception e) {
			e.printStackTrace();
			// addAttribute regular scope
			attrs.addAttribute("errorMsg", e.getMessage());
			return "error";
		}

	}
	 
	
	@GetMapping("/editEmp")
	public String editFormPage(@RequestParam("id") int id,
			                   @ModelAttribute("emp") Employee emp) {
		//use service
		Employee emp1 = empService.getEmployeeById(id);
		//copy data
		BeanUtils.copyProperties(emp1, emp);
		return "updateEmp";
	}
	
	@PostMapping("/editEmp")
	public String updateEmployee(RedirectAttributes attrs,
			                     @ModelAttribute("emp") Employee emp) {
		try {
			//use service
			String msg = empService.updateEmployee(emp);
			//use flass Attribute to store msg from source to destination
			attrs.addFlashAttribute("resultMsg",msg);
			//return
			return "redirect:report";
		}
		catch (Exception e) {
			e.printStackTrace();
			attrs.addAttribute("errorMsg", e.getMessage()); // addAttribute regular scope
			return"error";
		}
	}	 
		@GetMapping("/delete")
		public String deleteEmployee(@RequestParam int id,
				                     RedirectAttributes attrs) {
			try {
				//use service
				String msg = empService.deleteEmployee(id);
				//use Attribute to store  msg
				attrs.addFlashAttribute("resultMsg",msg);
				//return LVN that redirect
				return "redirect:report";
			} catch (Exception e) {
				e.printStackTrace();
				attrs.addAttribute("errorMsg", e.getMessage()); // addAttribute regular scope
				return"error";
			}
		}
		
}


















