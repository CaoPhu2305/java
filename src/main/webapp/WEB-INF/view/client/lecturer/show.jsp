<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <jsp:include page="../layoutLecturer/header.jsp"/>
        <div id="layoutSidenav">
            <!-- <jsp:include page="../layoutLecturer/sidebar.jsp" /> -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Quản Lý Sự Kiện</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Danh sách sự kiện
                            </div>
                            <div class="card-body">
                                <table class="table table-bordered table-hover" id="eventTable">
                                    <thead class="table-dark">
                                        <tr>
                                            <th scope="col">STT</th>
                                            <th scope="col">Tên sự kiện</th>
                                            <th scope="col">Ngày tổ chức</th>
                                            <th scope="col">Địa điểm</th>
                                            <th scope="col">Trạng thái</th>
                                            <th scope="col">Hành động</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Hội thảo Công nghệ 2025</td>
                                            <td>2025-06-01</td>
                                            <td>Trung tâm Hội nghị ABC</td>
                                            <td><span class="badge bg-success">Đã duyệt</span></td>
                                            <td>
                                                <a href="/lecturer/work" class="btn btn-sm btn-info me-1">
                                                    <i class="fas fa-eye"></i> Xem
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- Nút thêm sự kiện -->
                                <div class="d-flex justify-content-end mt-3">
                                    <a href="/lecturer/createEvent" class="btn btn-success">
                                        <i class="fas fa-plus"></i> Thêm sự kiện
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <jsp:include page="../layout/footer.jsp"/>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <!-- <script>
            document.addEventListener('DOMContentLoaded', function () {
                new simpleDatatables.DataTable('#eventTable', {
                    searchable: false, // Tắt thanh tìm kiếm
                    perPageSelect: false, // Tắt chọn số mục trên mỗi trang
                    paging: false // Tắt phân trang (nếu bạn muốn backend xử lý)
                });
            });
        </script> -->
    </body>
</html>