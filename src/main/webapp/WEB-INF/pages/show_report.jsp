<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Reports</title>
<style>
   body {
      font-family: Arial, sans-serif;
      background-color: #f4f6f9;
      margin: 0;
      padding: 20px;
   }
   h1 {
      text-align: center;
      color: #2c3e50;
      margin-bottom: 20px;
   }
   table {
      width: 80%;
      margin: 0 auto;
      border-collapse: collapse;
      background: #fff;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
   }
   th, td {
      padding: 12px 15px;
      text-align: center;
      border-bottom: 1px solid #ddd;
   }
   th {
      background-color: #3498db;
      color: white;
   }
   tr:hover {
      background-color: #f1f1f1;
   }
   a {
      text-decoration: none;
      color: #3498db;
      font-weight: bold;
   }
   a:hover {
      color: #1d6fa5;
   }
   .btn-link {
      padding: 6px 12px;
      border: 1px solid #3498db;
      border-radius: 5px;
      margin: 0 5px;
      display: inline-block;
      background: #ecf6fc;
      transition: background 0.3s;
   }
   .btn-link:hover {
      background: #d4ebfa;
   }
   .actions {
      display: flex;
      justify-content: center;
   }
   .links {
      text-align: center;
      margin-top: 30px;
   }
</style>
</head>
<body>

<h1>Employee Reports</h1>

<c:choose>
   <c:when test="${!empty empList }">
      <table>
         <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Department</th>
            <th>Hire Date</th>
            <th>Job</th>
            <th>Salary</th>
            <th colspan="2">Actions</th>
         </tr>
         <c:forEach var="emp" items="${empList}">
            <tr>
               <td>${emp.id}</td>
               <td>${emp.name}</td>
               <td>${emp.dept}</td>
               <td>${emp.hireDate}</td>
               <td>${emp.job}</td>
               <td>${emp.salary}</td>
                <td><a class="btn-link" href="editEmp?id=${emp.id}">Edit</a></td> 
               <td><a class="btn-link"  onclick="return confirm('Do you really want to delete this employee?');"  href="delete?id=${emp.id}">Delete</a></td>
            </tr>
         </c:forEach>
      </table>
   </c:when>
   <c:otherwise>
      <div class="links">
         <a class="btn-link" href="register">Add Employee</a>
      </div>
   </c:otherwise>
</c:choose>

<br><br>
<h1 style="color:green; text-align:center">${resultMsg}</h1>
<br><br>

<div class="links">
   <a class="btn-link" href="register">Add Employee</a>
   <a class="btn-link" href="./">Home</a>
</div>

</body>
</html>
