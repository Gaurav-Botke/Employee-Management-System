<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
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
   .form-container {
      max-width: 500px;
      margin: 0 auto;
      background: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
   }
   .form-group {
      margin-bottom: 15px;
   }
   label {
      display: block;
      margin-bottom: 6px;
      font-weight: bold;
      color: #34495e;
   }
   .form-control {
   width: 100%;
   padding: 10px;
   border: 1px solid #ccc;
   border-radius: 6px;
   box-sizing: border-box;
   background-color: #fff;
   font-size: 14px;
}
.form-control:focus {
   border-color: #3498db;
   outline: none;
   box-shadow: 0 0 4px rgba(52,152,219,0.5);
}
   
   input[type="text"], input[type="number"], input[type="date"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 6px;
      box-sizing: border-box;
   }
   .btn {
      display: inline-block;
      padding: 10px 18px;
      border: none;
      border-radius: 6px;
      font-weight: bold;
      cursor: pointer;
      margin-right: 10px;
   }
   .btn-submit {
      background-color: #3498db;
      color: white;
   }
   .btn-submit:hover {
      background-color: #1d6fa5;
   }
   .btn-cancel{
      background-color: red;
      color: white;
   }
   .btn-cancel:hover {
      background-color: red;
   }
   .btn-home {
      background-color: #2ecc71;
      color: white;
      text-decoration: none;
      padding: 10px 18px;
      border-radius: 6px;
   }
   .btn-home:hover {
      background-color: #27ae60;
   }
   .btn-view{
  display: inline-block;
  padding: 10px 20px;
  background-color: orange;   /* your custom color */
  color: white;               /* text color */
  text-decoration: none;      /* remove underline */
  border-radius: 8px;         /* rounded corners */
  font-weight: bold;
  transition: background 0.3s ease;
}

.btn-view:hover {
  background-color: darkorange; /* hover effect */
}
   .actions {
      margin-top: 20px;
      text-align: center;
   }
</style>
</head>
<body>

<h1>Add Employee</h1>

<div class="form-container">
   <frm:form modelAttribute="emp">
      <div class="form-group">
         <label for="name">Name</label>
         <frm:input path="name" id="name" required="required" />
      </div>

      <div class="form-group">
         <label for="job">Job</label>
         <frm:input path="job" id="job" required="required"/>
      </div>

      <div class="form-group">
   <label for="dept">Department</label>
   <frm:select path="dept" id="dept" cssClass="form-control" required="required">
      <frm:option value="">-- Select Department --</frm:option>
      <frm:option value="10">10</frm:option>
      <frm:option value="20">20</frm:option>
      <frm:option value="30">30</frm:option>
      <frm:option value="40">40</frm:option>
   </frm:select>
</div>

      <div class="form-group">
         <label for="hireDate">Hire Date</label>
         <frm:input path="hireDate" id="hireDate" type="date" required="required"/>
      </div>

      <div class="form-group">
         <label for="salary">Salary</label>
         <frm:input path="salary" id="salary" type="number" required="required"/>
      </div>

      <div class="actions">
         <button type="submit" class="btn btn-submit"  value="register">Submit</button>
         <button type="reset" class="btn btn-cancel">Cancel</button>
         
         <a href="report" class="btn-view">View Employee</a>
          
         <a href="./" class="btn-home">Home</a>
      </div>
   </frm:form>
</div>

</body>
</html>
