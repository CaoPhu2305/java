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
    <style>
        body {
            background-color: #eaf6ff;
        }
        .card {
            border-radius: 16px;
            box-shadow: 0 4px 12px rgba(0, 0, 100, 0.1);
        }
        .card-title {
            color: #0056b3;
            font-weight: bold;
            font-size: 2rem;
            text-align: center;
            margin-top: 20px;
        }
        .event-image-wrapper {
            padding: 16px;
        }
        .event-image {
            width: 100%;
            height: 100%;
            max-height: 400px;
            object-fit: cover;
            border-radius: 12px;
        }
        .event-details li i {
            color: #0077cc;
            margin-right: 6px;
        }
        .btn-primary {
            background-color: #3399ff;
            border-color: #3399ff;
        }
        .btn-primary:hover {
            background-color: #007acc;
            border-color: #007acc;
        }
        @media (max-width: 768px) {
            .event-image {
                max-height: 250px;
                border-radius: 12px;
            }
        }
    </style>
</head>

<body>

        <jsp:include page="../layout/header.jsp" />

        <!-- Event Detail Start -->
        <div class="container mb-3" style="margin-top: 120px;">
            <div class="card mx-auto " style="max-width: 80%">

                <!-- Tên sự kiện -->
                <h1 class="card-title">${event.name}</h1>

                <div class="row g-0">
                    <!-- Hình ảnh -->
                    <div class="col-md-6 event-image-wrapper">
                        <img src="/client/img/${event.imageEvent}" class="img-fluid event-image" alt="Event Image">
                    </div>

                    <!-- Thông tin sự kiện -->
                    <div class="col-md-6">
                        <div class="card-body">
                            <h5 class="text-primary mb-3">Thông tin sự kiện</h5>
                            <ul class="list-unstyled event-details">
                                <li><i class="bi bi-geo-alt-fill"></i><strong>Địa điểm:</strong> ${event.location}</li>
                                <li><i class="bi bi-calendar-event"></i><strong>Ngày tổ chức:</strong> ${event.startDay}</li>
                                <li><i class="bi bi-clock-fill"></i><strong>Giờ bắt đầu:</strong> ${event.startTime}</li>
                                <li><i class="bi bi-clock-history"></i><strong>Giờ kết thúc:</strong> ${event.endTime}</li>
                                <li><i class="bi bi-people-fill"></i><strong>Số lượng tham gia:</strong> ${event.maxAudience}</li>
                                <li><i class="bi bi-star-fill"></i><strong>Điểm rèn luyện:</strong> ${event.trainingPoints}</li>
                                <li><i class="bi bi-award-fill"></i><strong>Điểm công tác xã hội:</strong> ${event.socialWordPoint}</li>
                            </ul>

                            <!-- Nút đăng ký -->
                             <form method="post" action="/student/event/cart/${event.eventID}">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <button class="btn btn-primary mt-3 w-100">
                                    <i class="bi bi-box-arrow-in-right me-1"></i> Đăng ký ngay
                                </button>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Mô tả chi tiết -->
                <div class="card-body border-top mt-4">
                    <h5 class="text-primary mb-3">Chi tiết sự kiện</h5>
                    <p class="card-text text-justify" style="text-align: justify;">
                        ${event.description}
                    </p>
                </div>
            </div>
        </div>
        
        <c:if test="${not empty message}">
            <script type="text/javascript">
                document.addEventListener("DOMContentLoaded", function() {
                    var myModal = new bootstrap.Modal(document.getElementById('thongBaoModal'));
                    myModal.show();
                });
            </script>
        </c:if>

        <!-- Event Detail End -->
        <jsp:include page="../layout/message.jsp" />
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
