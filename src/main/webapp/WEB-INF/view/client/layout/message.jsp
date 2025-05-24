        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>



<div class="modal fade" id="thongBaoModal" tabindex="-1" aria-labelledby="thongBaoModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content shadow-lg rounded-4">
      <div class="modal-header bg-primary text-white rounded-top-4">
        <h5 class="modal-title" id="thongBaoModalLabel"></h5>Thông báo</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Đóng"></button>
      </div>
      <div class="modal-body fs-5 text-center">
        <c:out value="${message}" />
      </div>
      <div class="modal-footer justify-content-center">
        <button type="button" class="btn btn-success px-4" data-bs-dismiss="modal">Xác nhận</button>
      </div>
    </div>
  </div>
</div>