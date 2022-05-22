 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
 
   <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>

    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-12 col-lg-12 order-lg-last">
                            <img class="d-block w-100" src="<c:url value="resources/assets/img/cool.jpeg" />" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-12 order-lg-last">
                            <img class="img-fluid" src="<c:url value="resources/assets/img/giaohang.jpg" />" alt="">
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-12 order-lg-last">
                            <img class="img-fluid" src="<c:url value="resources/assets/img/cleandye.jpeg" />" alt="">
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->
    
    
    <!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Sản phẩm hot</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="<c:url value="resources/assets/img/c1.jpg" />" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">DUNK LOW DISRUPT 2</h5>
                <p class="text-center"><a class="btn btn-success">Đi đến</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="<c:url value="resources/assets/img/c2.jpg" />" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">AIR JORDAN 1 ZOOM CMFT PINK OXFORD</h2>
                <p class="text-center"><a class="btn btn-success">Đi đến</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="<c:url value="resources/assets/img/c3.jpg" />" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">AIR JORDAN 1 ZOOM </h2>
                <p class="text-center"><a class="btn btn-success">Đi đến</a></p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->
    
    
     <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Dịch vụ</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="<c:url value="resources/assets/img/f1.jpg" />" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$240.00</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Dịch vụ vệ sinh giày Sneaker chuyên nghiệp tại Tân Bình - Kingshoesvn</a>
                            <p class="card-text">
                                 Kingshoes ra đời với sứ mệnh làm giúp khách hàng gia tăng trải nghiệm sản phẩm không chỉ trong quá trình mua sắm mà còn bảo vệ đôi giày của khách hàng tromg quá trình sử dụng luôn mới - bền - đẹp. Dịch vụ vệ sinh giày Kingshoes với 
                            </p>
                            <p class="text-muted">Reviews (24)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="<c:url value="resources/assets/img/f2.jpg" />" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$480.00</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Chọn Size Giày Nike, Adidas</a>
                            <p class="card-text">
                                Kingshoes ra đời với sứ mệnh làm giúp khách hàng gia tăng trải nghiệm sản phẩm không chỉ trong quá trình mua sắm mà còn bảo vệ đôi giày của khách hàng tromg quá trình sử dụng luôn mới - bền - đẹp. Dịch vụ vệ sinh giày Kingshoes với
                            </p>
                            <p class="text-muted">Reviews (48)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="<c:url value="resources/assets/img/f3.jpg" />" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$360.00</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Cách Đo Cỡ Chân Và Xác Định Size Giày Việt Nam, US, UK Chuẩn Xác Tại KING SHOESs</a>
                            <p class="card-text">
                                Kingshoes ra đời với sứ mệnh làm giúp khách hàng gia tăng trải nghiệm sản phẩm không chỉ trong quá trình mua sắm mà còn 
                            </p>
                            <p class="text-muted">Reviews (74)</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Featured Product -->