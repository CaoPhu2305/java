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

    <div class="container py-3 mx-auto" style=" max-width: 60%;">
        <h1 class="text-center mb-4 text-primary">PHIẾU ĐĂNG KÝ TỔ CHỨC SỰ KIỆN</h1>

        <form:form method="post"
                modelAttribute="newEvent"
                action="/lecturer/createEvent"
                class="p-4 shadow rounded bg-white border border-dark"
                enctype="multipart/form-data">
             <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

            <!-- Tên sự kiện -->
            <div class="mb-3">
                <label class="form-label text-dark">Tên sự kiện</label>
                <form:input path="name" cssClass="form-control border-dark"/>
            </div>

            <!-- Ngày tổ chức -->
            <div class="mb-3">
                <label class="form-label text-dark">Ngày tổ chức</label>
                <form:input path="startDay" type="date" cssClass="form-control border-dark"/>
            </div>

            <!-- Thời gian -->
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label text-dark">Thời gian bắt đầu</label>
                    <form:input path="startTime" type="time" cssClass="form-control border-dark"/>
                </div>
                <div class="col-md-6 mb-3">
                    <label class="form-label text-dark">Thời gian kết thúc</label>
                    <form:input path="endTime" type="time" cssClass="form-control border-dark"/>
                </div>
            </div>

            <!-- Địa điểm -->
            <div class="mb-3">
                <label class="form-label text-dark">Địa điểm tổ chức</label>
                <form:input path="location" type="text" cssClass="form-control border-dark"/>
            </div>

            <!-- Số lượng sinh viên và cộng tác viên -->
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label text-dark">Số lượng sinh viên</label>
                    <form:input path="maxAudience" type="number" cssClass="form-control border-dark"/>
                </div>
                <div class="col-md-6 mb-3">
                    <label class="form-label text-dark">Số lượng cộng tác viên</label>
                    <form:input path="maxCTV" type="number" cssClass="form-control border-dark"/>
                </div>
            </div>

            <!-- Chi phí -->
            <div class="mb-3">
                <label class="form-label text-dark">Chi phí (VNĐ)</label>
                <form:input path="cost" type="number" step="0.01" cssClass="form-control border-dark"/>
            </div>

            <!-- Mô tả sự kiện -->
            <div class="mb-3">
                <label class="form-label text-dark">Mô tả sự kiện</label>
                <form:textarea path="description" rows="4" cssClass="form-control border-dark"/>
            </div>

            <!-- Điểm -->
            <div class="row">
                <div class="col-md-6 mb-3">
                <label class="form-label text-dark">Điểm rèn luyện</label>
                    <form:input path="trainingPoints" type="number" cssClass="form-control border-dark"/>
                </div>
                <div class="col-md-6 mb-3">
                    <label class="form-label text-dark">Điểm công tác xã hội</label>
                    <form:input path="socialWordPoint" type="number" cssClass="form-control border-dark"/>
                </div>
            </div>

            <!-- Mã check-in (nếu bạn muốn cho phép nhập tay) -->
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label text-dark">Mã Check-in (nếu có)</label>
                    <form:input path="checkinID" type="text" cssClass="form-control border-dark"/>
                </div>
                <div class="col-md-6 mb-3">
                <label for="avatarFile" class="form-label">Image</label>
                    <input class="form-control" type="file" id="avatarFile" accept=".png , .jng, .jpeg, .jpg "
                    name="phuFile"
                    />
                </div>
            </div>

    
            <!-- Nút submit -->
            <div class="text-center">
                <button type="submit" class="btn btn-primary px-4 rounded-pill fw-semibold" style="max-width: 360px;">
                    Tạo sự kiện
                </button>
            </div>
        </form:form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>