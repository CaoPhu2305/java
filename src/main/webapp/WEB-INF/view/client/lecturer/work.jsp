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

        <main class="container py-5" style="margin-top: 120px;" >
            <div class="card">
                <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
                    <div>
                        <h5 class="mb-0">📋 Danh sách Công Việc</h5>
                    </div>
                    <a href="/lecturer/create" class="btn btn-light">
                        <i class="fas fa-plus"></i> Thêm Công Việc
                    </a>
                </div>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered align-middle mb-0 text-center">
                            <thead class="table-dark">
                                <tr>
                                    <th scope="col">Tên Công Việc</th>
                                    <th scope="col">Chi Phí</th>
                                    <th scope="col">Số Lượng</th>
                                    <th scope="col">Hành Động</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- <c:forEach var="work" items="${works}">
                                    <tr>
                                        <td class="text-start">${work.name}</td>
                                        <td>${work.quantity}</td>
                                        <td>
                                            <a href="/admin/work/${work.id}" class="btn btn-sm btn-info me-1">
                                                <i class="fas fa-eye"></i> Xem
                                            </a>
                                            <a href="/admin/work/update/${work.id}" class="btn btn-sm btn-warning me-1">
                                                <i class="fas fa-edit"></i> Sửa
                                            </a>
                                            <a href="/admin/work/delete/${work.id}" class="btn btn-sm btn-danger"
                                            onclick="return confirm('Bạn có chắc muốn xóa không?');">
                                                <i class="fas fa-trash-alt"></i> Xóa
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach> -->

                                <tr>
                                        <td>Chào Đón Tân Sinh Viên</td>
                                        <td>1000000</td>
                                        <td>5</td>
                                        <td>
                                            <a href="/lecturer/view" class="btn btn-sm btn-info me-1">
                                                <i class="fas fa-eye"></i> Xem
                                            </a>
                                            <a href="/lecturer/add" class="btn btn-sm btn-primary me-1">
                                                <i class="fas fa-user-plus"></i> CTV
                                            </a>
                                            <a href="#" class="btn btn-sm btn-success"
                                            onclick="return confirm('Xác nhận đã hoàn thành công việc này?');">
                                                <i class="fas fa-check-circle"></i> Hoàn thành
                                            </a>
                                        </td>
                                    </tr>

                                <!-- <c:if test="${empty works}">
                                    <tr>
                                        <td colspan="4" class="text-center text-muted">Không có công việc nào.</td>
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
