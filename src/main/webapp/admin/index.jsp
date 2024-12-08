<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <%@include file="../component/allcss.jsp"%>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style type="text/css">
        .paint-card {
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
        }
        .text-green {
            color: green;
        }
        .mt-custom {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <%@include file="navbar.jsp" %>

    <div class="container p-5">
        <p class="text-center fs-3">Admin Dashboard</p>

        <!-- Display Error Message -->
        <c:if test="${not empty errorMsg}">
            <p class="fs-3 text-center text-danger">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session" />
        </c:if>

        <!-- Display Success Message -->
        <c:if test="${not empty succMsg}">
            <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
            <c:remove var="succMsg" scope="session" />
        </c:if>
        
        <% DoctorDao dao=new DoctorDao(DBConnect.getConn()); %>

        <!-- Cards Section -->
        <div class="row">
            <div class="col-md-4">
                <div class="card paint-card">
                    <div class="card-body text-center text-success">
                        <i class="fas fa-user-md fa-3x"></i>
                    </div>
                    <br>
                    <p class="fs-4 text-center text-green">
                        Doctor <br><%=dao.countDoctor() %>
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card paint-card">
                    <div class="card-body text-center text-success"> 
                        <i class="fa fa-users fa-3x"></i> 
                    </div>
                    <br>
                    <p class="fs-4 text-center text-green">
                        User <br><%=dao.countUser() %>
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card paint-card">
                    <div class="card-body text-center text-success">
                        <i class="fa fa-calendar-check fa-3x"></i>
                    </div>
                    <br>
                    <p class="fs-4 text-center text-green">
                        Total Appointment <br><%=dao.countAppointment() %>
                    </p>
                </div>
            </div>

            <div class="col-md-4 mt-custom">
                <div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <div class="card-body text-center text-success">
                        <i class="far fa-calendar-check fa-3x"></i>
                        <br>
                    </div>
                    <p class="fs-4 text-center text-green">
                        Specialist <br><%=dao.countSpecialist() %>
                    </p>
                </div>
            </div>
        </div>
    </div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="../addSpecialist" method="post">
        
 		<div class="form-group">
			<label>Enter Specialist Name</label> <input type="text"
					name="specName" class="form-control">
		</div>
		<div class="text-center mt-3">
        <button type="submit" class="btn btn-primary">Add</button>
        
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

    
</body>
</html>
