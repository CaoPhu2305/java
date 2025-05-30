<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Homepage </title>
        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
        <!-- Template Stylesheet -->
        <link href="/client/css/style.css" rel="stylesheet">
    </head>
    <body>

        <!-- Spinner Start -->
        <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" role="status"></div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar start -->

        <jsp:include page="../layout/header.jsp" />

        <!-- Navbar End -->

        <!-- Hero Start -->
        <jsp:include page="../layout/banner.jsp" />
        <!-- Hero End -->


        <!-- Featurs Section Start -->
        <!-- <jsp:include page="../layout/featurs.jsp" /> -->
        <!-- Featurs Section End -->


        <!-- Fruits Shop Start-->
        <div class="container-fluid fruite py-5">
            <div class="container py-5">
                <div class="tab-class text-center">
                    <div class="row g-4">
                        <div class="col-lg-4 text-start">
                            <h1>Event</h1>
                        </div>
                        <div class="col-lg-8 text-end">
                            <ul class="nav nav-pills d-inline-flex text-center mb-5">
                                <li class="nav-item">
                                    <a class="d-flex m-2 py-2 bg-light rounded-pill active" data-bs-toggle="pill" href="#tab-1" style="text-decoration: none;">
                                        <span class="text-dark" style="width: 130px;">Tất Cả</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="d-flex py-2 m-2 bg-light rounded-pill" data-bs-toggle="pill" href="#tab-2" style="text-decoration: none;" >
                                        <span class="text-dark" style="width: 130px;">Rèn Luyện</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="d-flex m-2 py-2 bg-light rounded-pill" data-bs-toggle="pill" href="#tab-3" style="text-decoration: none;">
                                        <span class="text-dark" style="width: 130px;">Công Tác Xã Hội</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                    <c:forEach var="event" items="${allEvents}">
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded border shadow-sm position-relative h-100 d-flex flex-column">
                                                <!-- Hình ảnh sự kiện -->
                                                <div class="fruite-img">
                                                    <img src="/client/img/${event.imageEvent}" class="img-fluid w-100 rounded-top" alt="${event.name}" style="height: 200px; object-fit: cover;" />
                                                </div>

                                                <!-- Nội dung sự kiện -->
                                                <div class="p-3 border-top flex-grow-1 d-flex flex-column justify-content-between">
                                                    <div>
                                                        <h5 class="fw-bold text-primary mb-2">Sự kiện: ${event.name}</h5>
                                                        <p class="mb-1"><i class="bi bi-geo-alt-fill text-danger me-2"></i> <strong>Địa điểm:</strong> ${event.location}</p>
                                                        <p class="mb-3">
                                                            <i class="bi bi-calendar-event text-success me-2"></i>
                                                            <strong>Ngày tổ chức:</strong>
                                                            <fmt:formatDate value="${event.startDay}" pattern="dd/MM/yyyy" />
                                                        </p>
                                                    </div>
                                                      <div class="text-center mt-auto">
                                                        <a href="/student/event/detail/${event.eventID}" class="btn btn-outline-primary rounded-pill w-100">Đăng ký / Chi tiết</a>
                                                      </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                </div>
                            </div>
                            <nav aria-label="Page navigation example" class="mt-3" >
                                <ul class="pagination" style="display: flex; justify-content: center;" >
                                    <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div id="tab-2" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                    <c:forEach var="event" items="${allEventTrainingPoints}">
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded border shadow-sm position-relative h-100 d-flex flex-column">
                                                <!-- Hình ảnh sự kiện -->
                                                <div class="fruite-img">
                                                    <img src="/client/img/${event.imageEvent}" class="img-fluid w-100 rounded-top" alt="${event.name}" style="height: 200px; object-fit: cover;" />
                                                </div>

                                                <!-- Nội dung sự kiện -->
                                                <div class="p-3 border-top flex-grow-1 d-flex flex-column justify-content-between">
                                                    <div>
                                                        <h5 class="fw-bold text-primary mb-2">Sự kiện: ${event.name}</h5>
                                                        <p class="mb-1"><i class="bi bi-geo-alt-fill text-danger me-2"></i> <strong>Địa điểm:</strong> ${event.location}</p>
                                                        <p class="mb-3">
                                                            <i class="bi bi-calendar-event text-success me-2"></i>
                                                            <strong>Ngày tổ chức:</strong>
                                                            <fmt:formatDate value="${event.startDay}" pattern="dd/MM/yyyy" />
                                                        </p>
                                                    </div>
                                                    <div class="text-center mt-auto">
                                                        <a href="/student/event/detail/${event.eventID}" class="btn btn-outline-primary rounded-pill w-100">Đăng ký / Chi tiết</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                </div>
                            </div>
                            <nav aria-label="Page navigation example" class="mt-3" >
                                <ul class="pagination" style="display: flex; justify-content: center;" >
                                    <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div id="tab-3" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                    <c:forEach var="event" items="${allEventSocialWordPoints}">
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded border shadow-sm position-relative h-100 d-flex flex-column">
                                                <!-- Hình ảnh sự kiện -->
                                                <div class="fruite-img">
                                                    <img src="/client/img/${event.imageEvent}" class="img-fluid w-100 rounded-top" alt="${event.name}" style="height: 200px; object-fit: cover;" />
                                                </div>

                                                <!-- Nội dung sự kiện -->
                                                <div class="p-3 border-top flex-grow-1 d-flex flex-column justify-content-between">
                                                    <div>
                                                        <h5 class="fw-bold text-primary mb-2">Sự kiện: ${event.name}</h5>
                                                        <p class="mb-1"><i class="bi bi-geo-alt-fill text-danger me-2"></i> <strong>Địa điểm:</strong> ${event.location}</p>
                                                        <p class="mb-3">
                                                            <i class="bi bi-calendar-event text-success me-2"></i>
                                                            <stron g>Ngày tổ chức:</strong>
                                                            <fmt:formatDate value="${event.startDay}" pattern="dd/MM/yyyy" />
                                                        </p>
                                                    </div>
                                                    <div class="text-center mt-auto">
                                                        <a href="/student/event/detail/${event.eventID}" class="btn btn-outline-primary rounded-pill w-100">Đăng ký / Chi tiết</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                </div>
                                <nav aria-label="Page navigation example" class="mt-3" >
                                    <ul class="pagination" style="display: flex; justify-content: center;" >
                                        <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>      
            </div>
        </div>

        <!-- <c:if test="${not empty message}">
            <script type="text/javascript">
                document.addEventListener("DOMContentLoaded", function() {
                    var myModal = new bootstrap.Modal(document.getElementById('thongBaoModal'));
                    myModal.show();
                });
            </script>
        </c:if> -->

        <!-- Footer Start -->
        <jsp:include page="../layout/footer.jsp" />
        <!-- Footer End -->
        
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/client/lib/easing/easing.min.js"></script>
    <script src="/client/lib/waypoints/waypoints.min.js"></script>
    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/client/js/main.js"></script>
    </body>
</html>
