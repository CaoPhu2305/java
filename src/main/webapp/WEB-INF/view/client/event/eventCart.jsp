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

    <!-- Main Content -->
    <div class="container py-5" style="margin-top: 60px;" >
        <div class="shadow rounded-4 bg-white p-5">
        <div class="container py-4">
        <!-- Student Info Card -->
        <div class="card mb-4 border-0 shadow-sm"  style="margin-top: -32px;">
            <div class="card-header bg-primary text-white rounded-top">
                <i class="fas fa-user-graduate me-2"></i>Thông tin sinh viên
            </div>
            <div class="card-body">
                <div class="row g-3">
                    <div class="col-md-6">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-user fs-5 text-primary me-3"></i>
                            <div>
                                <small class="text-muted">Tên sinh viên</small>
                                <p class="mb-0 fw-medium">${student.userAccount.name}</p>
                            </div>
                        </div>
                    </div>
                        <div class="col-md-6">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-star fs-5 text-primary me-3"></i>
                            <div>
                                <small class="text-muted">Điểm CTXH</small>
                                <p class="mb-0 fw-medium">${student.cTXH}</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-phone fs-5 text-primary me-3"></i>
                            <div>
                                <small class="text-muted">Số điện thoại</small>
                                <p class="mb-0 fw-medium">${student.userAccount.phone}</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-star fs-5 text-primary me-3"></i>
                            <div>
                                <small class="text-muted">Điểm Rèn Luyện</small>
                                <p class="mb-0 fw-medium">${student.renLuyen}</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-users fs-5 text-primary me-3"></i>
                            <div>
                                <small class="text-muted">Lớp</small>
                                <p class="mb-0 fw-medium">${student.classID}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            <!-- Event List Table -->
             <div class="row mx-auto">
                <div class="clo-md-6 col-12">
                <h3 class="text-primary mb-4 mt-4" style="margin-top: 30px;">
                    <i class="fas fa-calendar-alt me-2"></i>Danh sách sự kiện đã đăng ký
                </h3>
                <div class="table-responsive">
                    <table class="table table-hover align-middle table-bordered shadow-sm">
                        <thead class="table-primary text-center">
                            <tr>
                                <th>Hình ảnh</th>
                                <th>Tên sự kiện</th>
                                <th>Địa điểm</th>
                                <th>Bắt đầu</th>
                                <th>Kết thúc</th>
                                <th>Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="event" items="${events}">
                                <tr class="text-center align-middle">
                                    <td>
                                        <img src="/client/img/${event.imageEvent}" class="img-thumbnail rounded-circle" style="width: 80px; height: 80px;" alt="${event.eventID}">
                                    </td>
                                    <td class="fw-semibold text-primary">${event.name}</td>
                                    <td>${event.location}</td>
                                    <td>${event.startTime}</td>
                                    <td>${event.endTime}</td>
                                    <td>
                                        <div class="d-flex justify-content-center gap-2">
                                            <!-- Nút Xem -->
                                            <c:if test="">
                                                <a href="#" class="btn btn-sm btn-info text-white" title="Xem">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </c:if>
                                            <!-- Nút Xóa -->
                                            <a href="#" class="btn btn-sm btn-danger" title="Xóa" onclick="return confirm('Bạn có chắc chắn muốn xóa sự kiện này không?');">
                                                <i class="fas fa-trash-alt"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <jsp:include page="../layout/footer.jsp" />

    <!-- JS Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="/client/lib/easing/easing.min.js"></script>
    <script src="/client/lib/waypoints/waypoints.min.js"></script>
    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Main JS -->
    <script src="/client/js/main.js"></script>
</body>
</html>
