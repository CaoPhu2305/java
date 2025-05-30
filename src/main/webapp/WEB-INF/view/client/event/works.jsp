<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Homepage</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet">

    <!-- Font Awesome & Bootstrap Icons -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>

    <!-- Custom CSS -->
    <link href="/client/css/style.css" rel="stylesheet">
</head>
<body>

    <!-- Header -->
    <jsp:include page="../layout/header.jsp"/>

   <h3>ahihi</h3>

<main class="container py-5" style="margin-top: 120px;">
    <div class="card shadow-lg border-0 rounded-4">
        <div class="card-header bg-gradient bg-primary text-white text-center rounded-top-4">
            <h4 class="mb-0 fw-bold"><i class="fas fa-tasks me-2"></i>Danh sách công việc của bạn </h4>
        </div>
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover table-bordered table-striped align-middle text-center mb-0">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col"><i class="fas fa-id-badge me-1"></i>Mã Sự Kiện</th>
                            <th scope="col"><i class="fas fa-briefcase me-1"></i>Tên Sự Kiện</th>
                            <th scope="col"><i class="fas fa-users me-1"></i>Nơi Tổ Chức</th>
                            <th scope="col"><i class="bi bi-alarm"></i> Thời Gian Bắt Đầu</th>
                            <th scope="col"><i class="fas fa-eye me-1"></i>xem công việc</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="event" items="${events}">
                            <tr>
                                <td>${event.eventID}</td>
                                <td>${event.name}</td>
                                <td>${event.location}</td>
                                <td>${event.startDay}</td>
                                <td>
                                    <!-- data-bs-toggle="tooltip" data-bs-placement="top" title="Xem chi tiết công việc" -->
                                    <a href="/student/event/work/detail?eventID=${event.eventID}" class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-eye"></i> Xem
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>

                        <c:if test="${empty events}">
                            <tr>
                                <td colspan="5" class="text-center text-muted py-4">
                                    <i class="fas fa-info-circle me-2"></i> Hiện bạn không tham gia công việc nào với vai trò là cộng tác viên
                                </td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>

<script>
    // Kích hoạt tooltip của Bootstrap
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })
</script>



     <jsp:include page="../layout/footer.jsp" />

    <!-- Main JS -->
    <script src="/client/js/main.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="/client/lib/easing/easing.min.js"></script>
    <script src="/client/lib/waypoints/waypoints.min.js"></script>
    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>
</body>
</html>
