package com.nt.entity;

import java.sql.Date;

import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Table(name="Employee")
@Data
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class Employee {
    
	@Id
	@SequenceGenerator(name="gen1", sequenceName = "EMP_SEQ1",initialValue = 100, allocationSize = 1)
	@GeneratedValue(generator = "gen1", strategy = GenerationType.SEQUENCE)
	private Integer id;
	
	@NonNull
	@Column(length=30)
	private String name;
	
	@NonNull
	@Column(length=30)
	private String job;
	
	@NonNull
	private Date hireDate;
	
	@NonNull
	private Double salary;
	
	@NonNull
	private Integer dept;
}
