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

        <main class="container py-5">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    <div class="card shadow">
                        <div class="card-header bg-primary text-white text-center">
                            <h4 class="mb-0">Thêm Công Việc Mới</h4>
                        </div>
                        <div class="card-body">
                            <!-- Sử dụng form Spring nếu cần binding -->
                            <form:form method="post" action="/lecturer/create" modelAttribute="newWork">

                                <!-- <c:set var="errorNameWork">
                                    <form:errors path="nameWork" cssClass="invalid-feedback" />
                                </c:set>

                                 <c:set var="errorPrice">
                                    <form:errors path="price" cssClass="invalid-feedback" />
                                </c:set> -->

                                <div class="mb-3">
                                    <label for="eventName" class="form-label">Tên Sự Kiện</label>
                                    <form:input path="nameWork" type="text" cssClass="form-control" cssErrorClass="form-control is-invalid"  placeholder="Nhập tên sự kiện" />
                                      <form:errors path="nameWork" cssClass="invalid-feedback" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Số Tiền</label>
                                    <form:input path="price" type="number" cssClass="form-control" cssErrorClass="form-control is-invalid" placeholder="Nhập số tiền" required="lỗi hoành tráng" />
                                    <form:errors path="price" cssClass="invalid-feedback" />
                                </div>
                                <div class="text-end">
                                    <input type="hidden" name="eventID" value="${eventID}" />
                                    <button type="submit" class="btn btn-success px-4">
                                        <i class="fas fa-save"></i> Lưu
                                    </button>
                                    <a href="/lecturer/work/${eventID}" class="btn btn-secondary ms-2">Hủy</a>
                                </div>
                            </form:form>
                        </div>
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