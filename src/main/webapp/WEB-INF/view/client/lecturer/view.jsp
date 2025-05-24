<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Homepage</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

    <!-- Icons -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

    <!-- Custom Style -->
    <link href="/client/css/style.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>

<body>

        <jsp:include page="../layoutLecturer/header.jsp" />

        <main class="container py-5" style="margin-top: 120px;">
            <div class="card shadow">
                <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">📋 Danh sách Cộng Tác Viên Làm Việc</h5>
                </div>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered align-middle text-center mb-0">
                            <thead class="table-dark">
                                <tr>
                                    <th scope="col">Mã Số SV</th>
                                    <th scope="col">Tên Sinh Viên</th>
                                    <th scope="col">Mã Lớp</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Dữ liệu mẫu -->
                                <tr>
                                    <td>2001230000</td>
                                    <td>Hưng Khang Phú</td>
                                    <td>14DTTHXX</td>
                                </tr>

                                <!-- Dữ liệu động từ biến works -->
                                <!-- <c:forEach var="work" items="${works}">
                                    <tr>
                                        <td>${work.studentId}</td>
                                        <td>${work.studentName}</td>
                                        <td>${work.className}</td>
                                        <td>
                                            <a href="/work/${work.id}" class="btn btn-sm btn-info me-1">
                                                <i class="fas fa-eye"></i> Xem
                                            </a>
                                            <a href="/work/assign/${work.id}" class="btn btn-sm btn-primary me-1">
                                                <i class="fas fa-user-plus"></i> CTV
                                            </a>
                                            <a href="/work/complete/${work.id}" class="btn btn-sm btn-success"
                                            onclick="return confirm('Xác nhận đã hoàn thành công việc này?');">
                                                <i class="fas fa-check-circle"></i> Hoàn thành
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach> -->

                                <!-- <c:if test="${empty works}">
                                    <tr>
                                        <td colspan="4" class="text-center text-muted">Không có cộng tác viên nào đang làm công việc này.</td>
                                    </tr>
                                </c:if> -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>


        <jsp:include page="../layout/footer.jsp"/>

        <!-- JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="/client/lib/easing/easing.min.js"></script>
        <script src="/client/lib/waypoints/waypoints.min.js"></script>
        <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
        <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="/client/js/main.js"></script>
    </body>
</html>
