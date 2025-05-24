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
                                    <th scope="col" style="width: 180px;">Hành Động</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="work" items="${works}">
                                    <tr>
                                        <td>${work.nameWork}</td>
                                        <td>${work.price}</td>
                                        <td>5</td>
                                        <td style="width: 180px;">
                                            <a href="/lecturer/view/${work.workID}" class="btn btn-sm btn-info me-1 mb-1">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                            <a href="/lecturer/add/${work.workID}" class="btn btn-sm btn-success me-1 mb-1">
                                                <i class="fas fa-user-plus"></i>
                                            </a>
                                            <a href="/lecturer/complete/${work.workID}" class="btn btn-sm btn-secondary mb-1"
                                            onclick="return confirm('Bạn có chắc muốn đánh dấu công việc này là hoàn thành không?');">
                                                <i class="fas fa-check"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
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