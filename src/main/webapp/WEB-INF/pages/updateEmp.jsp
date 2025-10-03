<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 450px;
        margin: 50px auto;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0,0,0,0.2);
        padding: 30px;
    }

    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 25px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #555;
    }

    input[type="text"],
    input[type="number"],
    input[type="date"] {
        width: 100%;
        padding: 8px 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[readonly] {
        background-color: #eee;
    }

    input[type="submit"],
    input[type="button"] {
        width: 48%;
        padding: 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-weight: bold;
        margin-top: 30px;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
    }

    input[type="button"] {
        background-color: #f44336;
        color: white;
        float: right;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    input[type="button"]:hover {
        background-color: #e53935;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Update Employee</h1>
        <frm:form modelAttribute="emp">
            <label for="id">ID</label>
            <frm:input path="id" id="id" readonly="true"/>

            <label for="name">Name</label>
            <frm:input path="name" id="name"/>

            <label for="job">Job</label>
            <frm:input path="job" id="job"/>

            <label for="hireDate">Hire Date</label>
            <frm:input path="hireDate" id="hireDate"/>

            <label for="salary">Salary</label>
            <frm:input path="salary" id="salary"/>

            <label for="dept">Department</label>
           <frm:select path="dept" id="dept" >
    			  <frm:option value="">-- Select Department --</frm:option>
      		 <frm:option value="10">10</frm:option>
      		 <frm:option value="20">20</frm:option>
      		 <frm:option value="30">30</frm:option>
      		 <frm:option value="40">40</frm:option>
   		 </frm:select><br>
            
            <input type="submit" value="Update Employee">
            <input type="button" value="Back" onclick="window.history.back();">
            
        </frm:form>
    </div>
</body>
</html>
