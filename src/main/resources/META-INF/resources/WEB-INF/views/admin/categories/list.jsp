<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách danh mục</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body class="bg-light" style="padding-top: 20px;">
    
    <div class="container">
        <c:if test="${message != null}">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <i class="fas fa-check-circle"></i> ${message}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </c:if>

        <div class="card shadow-sm">
            <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
                <h4 class="mb-0"><i class="fas fa-list"></i> Danh sách Category</h4>
                
                <a href="<c:url value='/admin/categories/add'/>" class="btn btn-light btn-sm">
                    <i class="fas fa-plus"></i> Add New
                </a>
            </div>
            
            <div class="card-body">
                <table class="table table-striped table-hover table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th class="text-center" width="10%">ID</th>
                            <th>Category Name</th>
                            <th class="text-center" width="20%">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:if test="${empty categories}">
                            <tr>
                                <td colspan="3" class="text-center text-muted">
                                    Chưa có danh mục nào. Hãy thêm mới!
                                </td>
                            </tr>
                        </c:if>

                        <c:forEach items="${categories}" var="category">
                            <tr>
                                <td class="text-center align-middle">${category.id}</td>
                                <td class="align-middle fw-bold">${category.name}</td>
                                <td class="text-center align-middle">
                                    <a href="<c:url value='/admin/categories/view/${category.id}'/>" 
                                       class="btn btn-outline-info btn-sm" title="View">
                                        <i class="fas fa-eye"></i>
                                    </a>
                                    
                                    <a href="<c:url value='/admin/categories/edit/${category.id}'/>" 
                                       class="btn btn-outline-warning btn-sm" title="Edit">
                                        <i class="fas fa-edit"></i>
                                    </a> 
                                    
                                    <a href="<c:url value='/admin/categories/delete/${category.id}'/>" 
                                       class="btn btn-outline-danger btn-sm" 
                                       title="Delete"
                                       onclick="return confirm('Bạn có chắc chắn muốn xóa Category này không?');">
                                        <i class="fas fa-trash-alt"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="card-footer text-muted text-center">
                Total: ${categories.size()} categories
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>