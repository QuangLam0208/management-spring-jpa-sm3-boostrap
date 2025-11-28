<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${category.isEdit ? 'Chỉnh sửa danh mục' : 'Thêm mới danh mục'}</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        body {
            background-color: #f8f9fa; /* Màu nền xám nhẹ cho dịu mắt */
            padding-top: 50px;
        }
        .card {
            box-shadow: 0 4px 8px rgba(0,0,0,0.1); /* Tạo bóng đổ cho đẹp */
            border: none;
        }
        .card-header {
            background-color: #0d6efd; /* Màu xanh chủ đạo */
            color: white;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row justify-content-center"> <div class="col-md-8 col-lg-6"> <form action="<c:url value='/admin/categories/saveOrUpdate' />" method="POST">
                    
                    <div class="card">
                        <div class="card-header text-center">
                            <h3><i class="fas ${category.isEdit ? 'fa-edit' : 'fa-plus-circle'}"></i> 
                                ${category.isEdit ? 'Edit Category' : 'Add New Category'}
                            </h3>
                        </div>

                        <div class="card-body p-4">
                            <input type="hidden" name="isEdit" value="${category.isEdit}">

                            <div class="mb-3">
                                <label for="categoryId" class="form-label fw-bold">Category ID</label>
                                <input type="text" 
                                       readonly="readonly" 
                                       class="form-control bg-light" 
                                       value="${category.id}" 
                                       id="categoryId" 
                                       name="id" 
                                       placeholder="Auto generated ID">
                            </div>

                            <div class="mb-3">
                                <label for="name" class="form-label fw-bold">Category Name</label>
                                <input type="text" 
                                       class="form-control" 
                                       value="${category.name}" 
                                       id="name" 
                                       name="name" 
                                       placeholder="Enter category name"
                                       required> </div>
                            
                            </div>

                        <div class="card-footer text-muted d-flex justify-content-between align-items-center">
                            <a href="<c:url value='/admin/categories' />" class="btn btn-secondary">
                                <i class="fas fa-arrow-left"></i> Back to List
                            </a>

                            <button class="btn btn-primary" type="submit">
                                <c:if test="${category.isEdit}">
                                    <i class="fas fa-save"></i> Update
                                </c:if>
                                <c:if test="${!category.isEdit}">
                                    <i class="fas fa-save"></i> Save
                                </c:if>
                            </button>
                        </div>
                    </div>
                </form>
                
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>