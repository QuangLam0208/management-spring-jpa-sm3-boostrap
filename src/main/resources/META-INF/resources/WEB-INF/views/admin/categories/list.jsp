<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<div class="card shadow">
    <div class="card-header py-3 d-flex justify-content-between">
        <h6 class="m-0 font-weight-bold text-primary">Quản lý Category</h6>
        <a href="<c:url value='/admin/categories/add'/>" class="btn btn-primary btn-sm">Thêm mới</a>
    </div>
    <div class="card-body">
        <c:if test="${not empty message}">
             <div class="alert alert-success">${message}</div>
        </c:if>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${categories}" var="item">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.name}</td>
                        <td>${item.status ? 'Active' : 'Inactive'}</td>
                        <td>
                             <a href="<c:url value='/admin/categories/edit/${item.id}'/>" class="btn btn-warning btn-sm">Sửa</a>
                             <a href="<c:url value='/admin/categories/delete/${item.id}'/>" class="btn btn-danger btn-sm">Xóa</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>