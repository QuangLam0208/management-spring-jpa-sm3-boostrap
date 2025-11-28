<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-4">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Lương Quang Lâm - MSSV: 23110121 - FIT.HCMUTE</a>
    
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="<c:url value='/admin/categories'/>">Category</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="<c:url value='/admin/videos'/>">Video</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="<c:url value='/admin/users'/>">User</a>
        </li>
      </ul>
    </div>
  </div>
</nav>