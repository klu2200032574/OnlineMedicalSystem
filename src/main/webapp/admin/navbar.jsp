<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <!-- Brand -->
    <a class="navbar-brand" href="index.jsp">
      <i class="fas fa-clinic-medical"></i> Medi Home
    </a>

    <!-- Toggle Button for Mobile View -->
    <button
      class="navbar-toggler"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar Links -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" href="index.jsp">HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="doctor.jsp">DOCTOR</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="view_doctor.jsp">VIEW DOCTOR</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="patient.jsp">PATIENT</a>
        </li>
      </ul>

      <!-- Logout Button -->
      <a href="../admin_login.jsp" class="btn btn-light">Logout</a>
    </div>
  </div>
</nav>
