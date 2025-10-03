<%-- <%@ page isELIgnored="false" %>

 <h1 style="color:red; text-align:center">Employee Management System</h1><br><br>
 <h2 style="color:blue; text-align:center"><a href="report">Show Employee Report</a></h2> --%>
 
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Management System</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f4f6f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .hero {
            background: linear-gradient(90deg, #4b6cb7, #182848);
            color: #fff;
            padding: 40px 0;
            text-align: center;
        }
        .hero h1 {
            font-size: 3rem;
            margin-bottom: 20px;
        }
        .hero p {
            font-size: 1.2rem;
            margin-bottom: 30px;
        }
        .btn-custom {
            background-color: #ff6b6b;
            border: none;
            color: white;
        }
        .btn-custom:hover {
            background-color: #ff4757;
        }
        .features {
            padding: 60px 0;
        }
        .feature-card {
            background: white;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
            padding: 30px;
            transition: transform 0.3s;
        }
        .feature-card:hover {
            transform: translateY(-10px);
        }
        footer {
            background: #182848;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }
    </style>
</head>
<body>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1>Welcome to Employee Management System</h1>
            <p>Manage your employees efficiently and effortlessly</p>
            <a href="register" class="btn btn-custom btn-lg me-2">Add Employee</a>
            <a href="report" class="btn btn-outline-light btn-lg">View Employees</a>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-4 mb-4">
                    <div class="feature-card">
                        <h4>Add Employee</h4>
                         <p>This feature allows you to add a new employee to the system. You can provide details like Name, 
                         Job, Hire Date, Salary, and Department.</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="feature-card">
                        <h4>View Employees</h4>
                         <p>This feature lets you view a list of all employees in the system, including their ID, 
                         Name, Job, Salary, Hire Date, and Department.</p>
   
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="feature-card">
                        <h4>Update & Delete</h4>
                        <p>This feature allows you to manage existing employees. You can update an employee’s details, 
                        such as changing their job title, salary, or department,
                         or remove an employee from the system if they are no longer part of the organization.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Employee Management System. All rights reserved.</p>
    </footer>

    <!-- Bootstrap JS CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
 
