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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    </body>
</html>