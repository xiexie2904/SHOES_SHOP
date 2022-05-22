 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page session="true" %>

<c:set var="card" value="${sessionScope['scopedTarget.cardService']}"/>
<header >
	<nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="/shoes_store">
               <img alt="" src="<%=request.getContextPath() %>/resources/images/logo.png" style="max-width:250px">
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/" />">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/about" />" >Về chúng tôi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/shop" />">Sản phẩm</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/contact" />">Liên hệ</a>

                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                               <img src="<%=request.getContextPath() %>/resources/assets/img/icon-search.svg"  alt="Icon Account">
                            </div>
                        </div>
                    </div>
                    
                    
                    <c:if test="${sessionScope.customerC!=null }">
                    	<a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    	</a>
                    	<a class="nav-icon position-relative text-decoration-none" href="<c:url value="/card" />">
                        <img src="/shoes_store/resources/assets/img/icon-cart.svg"  alt="Icon Account">
						<span id="cnt" class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">
               				${card.count}
               			</span>                    	</a>
                    	<a class="nav-icon position-relative text-decoration-none" href="<c:url value="/logout" />">
                        <i class="fas fa-sign-out-alt"></i> 
                        </a>
                        <span class="label label-success">${sessionScope.customerC.name}</span>
                                
                    </c:if>
                    <c:if test="${sessionScope.customerC==null }">
                    	<a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <img src="<%=request.getContextPath() %>/resources/assets/img/icon-search.svg"" alt="Icon Account">
                    	</a>
                    	<a class="nav-icon position-relative text-decoration-none" href="<c:url value="/card" />">
                         <img src="<%=request.getContextPath() %>/resources/assets/img/icon-cart.svg"" alt="Icon Account">
						<span id="cnt" class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">
               				${card.count}
               			</span>                    	</a>
                    	<a class="nav-icon position-relative text-decoration-none" href="<c:url value="/login" />">
                        <img src="<%=request.getContextPath() %>/resources/assets/img/icon-account.svg"" alt="Icon Account">
                        </a>
                    </c:if>
                                      
                    
                    
                </div>
            </div>
        </div>
    </nav>
</header>