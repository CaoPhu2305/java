<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="/lecturer">Event Management</a>

    <!-- Sidebar Toggle (nếu có thể thêm ở đây)-->
    
    <!-- Spacer để đẩy icon sang phải -->
    <div class="ms-auto d-flex align-items-center">
        <!-- User Icon -->
        <a class="nav-link text-white" href="/profile">
            <i class="bi bi-person-circle fs-4"></i>
        </a>
    </div>

    <form method="post" action="/logout" style=" margin-right: 24px; ">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <button class="btn" style="color: white;" >
            Logout
        </button>
    </form>

</nav>
 