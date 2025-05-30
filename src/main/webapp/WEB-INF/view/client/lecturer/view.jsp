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
                        <form action="/lecturer/view/${idEV}/${idCV}" method="post">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            <table class="table table-hover table-bordered align-middle text-center mb-0">
                                <thead class="table-dark">
                                    <tr>
                                        <th scope="col">Mã Số SV</th>
                                        <th scope="col">Tên Sinh Viên</th>
                                        <th scope="col">Mã Lớp</th>
                                        <th scope="col">Thêm</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="student" items="${students}">
                                        <tr>
                                            <td>${student.studentID}</td>
                                            <td>${student.userAccount.name}</td>
                                            <td>${student.classID}</td>
                                            <td>
                                                <input type="checkbox" class="form-check-input" name="studentIds" value="${student.studentID}" />
                                            </td>
                                        </tr>
                                    </c:forEach>

                                    <c:if test="${empty students}">
                                        <tr>
                                            <td colspan="4" class="text-center text-muted">
                                                Không có cộng tác viên nào đang làm công việc này.
                                            </td>
                                        </tr>
                                    </c:if>
                                </tbody>
                            </table>

                        <c:set var="disabledAdd" value="${empty students ? 'disabled' : ''}"/>

                        <div class="d-flex justify-content-end mt-3 px-3 pb-3">
                            <button type="submit" class="btn btn-danger ${disabledAdd} " >
                                <i class="fas fa-check"></i> Xác nhận Xóa
                            </button>
                        </div>
                        </form>
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