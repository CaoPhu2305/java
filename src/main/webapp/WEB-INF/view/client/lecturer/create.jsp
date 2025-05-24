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
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    <div class="card shadow">
                        <div class="card-header bg-primary text-white text-center">
                            <h4 class="mb-0">Thêm Công Việc Mới</h4>
                        </div>
                        <div class="card-body">
                            <!-- Sử dụng form Spring nếu cần binding -->
                            <form method="post" action="/admin/work/save">
                                <div class="mb-3">
                                    <label for="eventName" class="form-label">Tên Sự Kiện</label>
                                    <input type="text" id="eventName" name="eventName" class="form-control" placeholder="Nhập tên sự kiện" required>
                                </div>
                                <div class="mb-3">
                                    <label for="amount" class="form-label">Số Tiền</label>
                                    <input type="number" id="amount" name="amount" class="form-control" placeholder="Nhập số tiền" required>
                                </div>
                                <div class="text-end">
                                    <button type="submit" class="btn btn-success px-4">
                                        <i class="fas fa-save"></i> Lưu
                                    </button>
                                    <a href="/admin/work/list" class="btn btn-secondary ms-2">Hủy</a>
                                </div>
                            </form>
                        </div>
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
