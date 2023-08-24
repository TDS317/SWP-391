
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <!-- Meta Tag -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name='copyright' content=''>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Title Tag  -->
        <title>Group2Com</title>
        <!-- Favicon -->

        <!-- Web Font -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

        <!-- StyleSheet -->
        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="css/magnific-popup.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.css">
        <!-- Fancybox -->
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <!-- Themify Icons -->
        <link rel="stylesheet" href="css/themify-icons.css">
        <!-- Nice Select CSS -->
        <link rel="stylesheet" href="css/niceselect.css">
        <!-- Animate CSS -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- Flex Slider CSS -->
        <link rel="stylesheet" href="css/flex-slider.min.css">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="css/owl-carousel.css">
        <!-- Slicknav -->
        <link rel="stylesheet" href="css/slicknav.min.css">

        <!-- Eshop StyleSheet -->
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/banner.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="css/style.css">




    </head>
    <body class="js">


        <header class="header shop">
            <!-- Topbar -->
            <div class="topbar">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-12 col-12">
                            <!-- Top Left -->
                            <div class="top-left">
                                <ul class="list-main">
                                    <li><i class="ti-headphone-alt"></i> +(84)0392446665</li>
                                    <li><i class="ti-email"></i> Group2Com@gmail.com</li>
                                </ul>
                            </div>
                            <!--/ End Top Left -->
                        </div>
                        <div class="col-lg-7 col-md-12 col-12">
                            <!-- Top Right -->
                            <div class="right-content">
                                <ul class="list-main">
                                    <c:if test="${acc == null}">
                                        <!--                                        <li><i class="ti-location-pin"></i> Store location</li>
                                                                                <li><i class="ti-alarm-clock"></i> <a href="#">Daily deal</a></li>-->
                                        <li><i class="ti-user"></i> <a href="login">Tài Khoản</a></li>
                                        <li><i class="ti-power-off"></i><a href="login">Đăng nhập</a></li>
                                        <li><i class="ti-power-off"></i><a href="login">Đăng ký</a></li>
                                            </c:if >
                                            <c:if test="${acc != null}">
                                        <!--                                        <li><i class="ti-location-pin"></i> Store location</li>
                                                                                <li><i class="ti-alarm-clock"></i> <a href="#">Daily deal</a></li>-->
                                        <c:if test="${roll==0}">
                                            <li><i class="ti-user"></i> <a href="#">${acc.getUserName()}</a></li>
                                            <li><a href="changePassword?Email=${acc.getEmail()}">Thay đổi mật khẩu</a></li> 
                                            </c:if>
                                            <c:if test="${roll==1}">
                                            <li><i class="ti-user"></i> <a href="#">${acc.getAdminName()}</a></li>
                                            <li><a href="changePassword?Page=index?Email=${acc.getEmail()}">Thay đổi mật khẩu</a></li> 
                                            </c:if>
                                            <c:if test="${roll==2}">
                                            <li><i class="ti-user"></i> <a href="#">${acc.getAdminName()}</a></li>
                                            <li><a href="changePassword?page=index?Email=${acc.getEmail()}">Thay đổi mật khẩu</a></li> 
                                            </c:if>
                                        <li><a href="logout?page=index.jsp">Đăng xuất</a></li>                                                                
                                        </c:if >
                                </ul>
                            </div>
                            <!-- End Top Right -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Topbar -->

            <div class="middle-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-md-2 col-12">
                            <!-- Logo -->
                            <div class="logo">
                                Group2Com
                            </div>
                            <!--/ End Logo -->
                            <!-- Search Form -->
                            <div class="search-top">
                                <div class="top-search"><a href="#0"><i class="ti-search"></i></a></div>
                                <!-- Search Form -->
                                <div class="search-top">
                                    <form class="search-form">
                                        <input type="text" placeholder="Search here..." name="search">
                                        <button value="search" type="submit"><i class="ti-search"></i></button>
                                    </form>
                                </div>
                                <!--/ End Search Form -->
                            </div>
                            <!--/ End Search Form -->
                            <div class="mobile-nav"></div>
                        </div>
                        <div class="col-lg-8 col-md-7 col-12">
                            <div class="search-bar-top">
                                <div class="search-bar">
                                    <select>
                                        <option selected="selected">All Category</option>
                                        <option>watch</option>
                                        <option>mobile</option>
                                        <option>kid’s item</option>
                                    </select>
                                    <form>
                                        <input name="search" placeholder="Search Products Here....." type="search">
                                        <button class="btnn"><i class="ti-search"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-12">
                            <div class="right-bar">
                                <!-- Search Form -->
                                <div class="sinlge-bar">
                                    <a href="#" class="single-icon"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                </div>
                                <div class="sinlge-bar">
                                    <a href="#" class="single-icon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></a>
                                </div>
                                <div class="sinlge-bar shopping">
                                    <a href="#" class="single-icon"><i class="ti-bag"></i> <span class="total-count">2</span></a>
                                    <!-- Shopping Item -->
                                    <div class="shopping-item">
                                        <div class="dropdown-cart-header">
                                            <span>2 Items</span>
                                            <a href="#">View Cart</a>
                                        </div>
                                        <ul class="shopping-list">
                                            <li>
                                                <a href="#" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>
                                                <a class="cart-img" href="#"><img src="https://via.placeholder.com/70x70" alt="#"></a>
                                                <h4><a href="#">Woman Ring</a></h4>
                                                <p class="quantity">1x - <span class="amount">$99.00</span></p>
                                            </li>
                                            <li>
                                                <a href="#" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>
                                                <a class="cart-img" href="#"><img src="https://via.placeholder.com/70x70" alt="#"></a>
                                                <h4><a href="#">Woman Necklace</a></h4>
                                                <p class="quantity">1x - <span class="amount">$35.00</span></p>
                                            </li>
                                        </ul>
                                        <div class="bottom">
                                            <div class="total">
                                                <span>Total</span>
                                                <span class="total-amount">$134.00</span>
                                            </div>
                                            <a href="checkout.jsp" class="btn animate">Checkout</a>
                                        </div>
                                    </div>
                                    <!--/ End Shopping Item -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header Inner -->
            <div class="header-inner">
                <div class="container">
                    <div class="cat-nav-head">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="all-category">

                                </div>
                            </div>
                            <div class="col-lg-9 col-12">
                                <div class="menu-area">
                                    <!-- Main Menu -->
                                    <nav class="navbar navbar-expand-lg">
                                        <div class="navbar-collapse">	
                                            <div class="nav-inner">	
                                                <ul class="nav main-menu menu navbar-nav">
                                                    <li class="active"><a href="index.jsp">Home</a></li>
                                                    <li><a href="product">Product</a></li>												
                                                    <li><a href="About-us.jsp">About Us</a></li>
                                                    <li><a href="#">Shop<i class="ti-angle-down"></i><span class="new">New</span></a>
                                                        <ul class="dropdown">
                                                            <li><a href="cart.jsp">Cart</a></li>
                                                            <li><a href="checkout.jsp">Checkout</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Pages</a></li>									
                                                    <li><a href="blogs">Blog<i class="ti-angle-down"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="blogs">Blog</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="contact.jsp">Contact Us</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </nav>
                                    <!--/ End Main Menu -->	
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="image-slider">
                <img src="images/bannerdau.jpg" alt="Banner 2" class="slider-image">
                <img src="images/bannerthuhai.jpg" alt="Banner 3" class="slider-image">
                <img src="images/banner1.jpg" alt="Banner 4" class="slider-image">
                <img src="images/banner2.jpg" alt="Banner 5" class="slider-image">
                <img src="images/banner3.jpg" alt="Banner 6" class="slider-image">
                <img src="images/banner4.jpg" alt="Banner 7" class="slider-image">
            </div>
        </header>

        <section class="shop-blog section">
            <div class="container">

                <div class="row">
                    <c:forEach var="b" items="${newests}">
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Blog  -->
                            <div class="shop-single-blog">
                                <div class="image" >  <a href="blog-detail?id=${b.getNewsID()}"><img src="newsImage/${b.getImage()}" alt="#"></a></div>
                                <div class="content">
                                    <p class="date">${b.getCreateDate()}</p>
                                    <a href="blog-detail?id=${b.getNewsID()}" class="title">${b.getTitle()}</a>
                                    <a href="#" class="more-btn">Continue Reading</a>
                                </div>
                            </div>
                            <!-- End Single Blog  -->
                        </div>

                    </c:forEach>
                </div>
            </div>
        </section>

        <!-- End Small Banner -->
        

        <!-- Start Product Area -->
        <div class="product-area section">

            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h2>Trending Item</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-info">
                            <div class="nav-main">
                                <!-- Tab Nav -->
                                <ul class="nav nav-tabs" id="myTab" role="tablist">                                 
                                    <li class="nav-item"><a class="nav-link active" onclick="Load(event, '0')" >All</a></li>
                                        <c:forEach items="${brand}" var="item">                                 
                                        <li class="nav-item"><a class="nav-link" onclick="Load(event, '${item.getBrandID()}')" >${item.getBrandName()} </a></li>                                  
                                        </c:forEach>
                                </ul>

                                <!--/ End Tab Nav -->
                            </div>
                            <div class="tab-content" id="myTabContent">
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade show active" id="man" role="tabpanel">
                                    <div class="tab-single">
                                        <div id="listContent" class="row">
                                            <c:forEach items="${listProduct}" var="item">
                                                <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                    <div class="single-product">
                                                        <div class="product-img">
                                                            <a href="productDetail?id=${item.getProductID()}">
                                                                <img style="width: 269px; height: 367px;"class="default-img" src="imageProduct/${item.getLargeImage()}" alt="#">
                                                                <img style="width: 269px; height: 367px;"class="hover-img" src="imageProduct/${item.getLargeImage()}" alt="#">
                                                            </a>
                                                            <div class="button-head">
                                                                <div class="product-action">
                                                                    <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                    <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                    <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                                </div>
                                                                <div class="product-action-2">
                                                                    <a title="Add to cart" href="#">Add to cart</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="product-content">
                                                            <h3><a href="productDetail?id=${item.getProductID()}"></a></h3>
                                                            <div class="product-price">
                                                                <h6 style="font-weight: bold; color: red;">${item.getPrice()} đ</h6><br>
                                                                <h5 style="font-weight: bold">${item.getProductName()}</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>

                                        </div>
                                        <div id="emptyList">

                                        </div>

                                    </div>
                                </div>
                                <script>
                                    function Load(event, id) {
                                        var navItems = document.getElementsByClassName('nav-link');
                                        for (var i = 0; i < navItems.length; i++) {
                                            navItems[i].classList.remove('active');
                                        }

                                        // Thêm lớp 'active' vào thẻ <li> được nhấp vào
                                        event.target.classList.add('active');
                                        $.ajax({
                                            url: "brand?brandID=" + id,

                                            type: "GET",
                                            success: function (data) {
                                                var row = document.getElementById("listContent");
                                                var empty = document.getElementById("emptyList");

                                                if (data.trim() !== "") {
                                                    row.innerHTML = data;
                                                    empty.innerHTML = ""; // Xóa nội dung của "emptyList"
                                                } else {
                                                    row.innerHTML = ""; // Xóa nội dung của "listContent"
                                                    empty.innerHTML = "<br><br><br><h5 style=\"text-align: center;\">Hiện chưa có sản phẩm của thương hiệu này</h5>";
                                                }
                                            },
                                            error: function (xhr) {

                                            }
                                        });
                                    }
                                </script>


                                <!--/ End Single Tab -->
                            </div>

                        </div>
                        <br>
                        <br>
                        <br>
                        <!-- End Product Area -->

                        <!-- Start Midium Banner  -->
                        <section class="midium-banner">
                            <div class="container">
                                <div class="section-title">
                                    <h2>Hot Item</h2>
                                </div>
                                <div class="row">
                                    <!-- Single Banner  -->
                                    <c:forEach items="${hot}" var="item" varStatus="status">
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <div class="single-banner">
                                                <a href="productDetail?id=${item.getProductID()}">
                                                    <img style="width: 700px; height: 500px;"class="default-img" src="imageProduct/${item.getLargeImage()}" alt="#">

                                                </a>
<!--                                                 <a href="productDetail?id=${item.getProductID()}">
                                    <img src="imageProduct/${item.getLargeImage()}" alt="#">-->
                                                <div class="content">
                                                    <h2 style="color : red;">Top ${status.index + 1} best seller 2023</h2>
                                                    <h3 style="color:wheat;">Discount <br>Up to <span>${item.getDiscount()} %</span></h3>
                                                    <a href="productDetail?id=${item.getProductID()}">Shop Now</a>
                                                </div>
                                            </div>

                                        </div>
                                    </c:forEach>
                                    </section>
                                    <!-- End Midium Banner -->

                                    <!-- Start Most Popular -->
                                    <div class="product-area most-popular section">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="section-title">
                                                        <h2>New Item</h2>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="owl-carousel popular-slider">
                                                        <!-- Start Single Product -->
                                                        <c:forEach items="${newItem}" var="item">
                                                            <div class="single-product">

                                                                <div class="product-img">
                                                                    <a href="productDetail?id=${item.getProductID()}">
                                                                        <img style="width: 269px; height: 367px;" class="default-img" src="imageProduct/${item.getLargeImage()}" alt="#">
                                                                        <img style="width: 269px; height: 367px;" class="hover-img" src="imageProduct/${item.getLargeImage()}" alt="#">
                                                                        <span class="out-of-stock">New</span>
                                                                    </a>
                                                                    <div class="button-head">
                                                                        <div class="product-action">
                                                                            <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                            <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                            <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                                        </div>
                                                                        <div class="product-action-2">
                                                                            <a title="Add to cart" href="#">Add to cart</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="product-content">
                                                                    <h3><a href="productDetail?id=${item.getProductID()}"></a></h3>
                                                                    <div class="product-price">

                                                                        <span>${item.getPrice()}</span>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </c:forEach>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Most Popular Area -->


                                    <!-- Start Shop Home List  -->
                                    <section class="shop-home-list section">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-lg-4 col-md-6 col-12">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <div class="shop-section-title">
                                                                <h1>Chuột</h1>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Start Single List  -->
                                                    <c:forEach items="${mouse}" var="item">
                                                        <div class="single-list">
                                                            <div class="row">
                                                                <div class="col-lg-6 col-md-6 col-12">
                                                                    <div class="list-image overlay">
                                                                        <a href="productDetail?id=${item.getProductID()}">
                                                                            <img src="imageProduct/${item.getLargeImage()}" alt="#">
                                                                        </a>
                                                                        <a href="productDetail?id=${item.getProductID()}" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                                                    <div class="content">
                                                                        <h4 class="title"><a href="productDetail?id=${item.getProductID()}">${item.getProductName()}</a></h4>
                                                                        <p class="price with-discount">${item.getPrice()}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                    <!-- End Single List  -->

                                                </div>
                                                <div class="col-lg-4 col-md-6 col-12">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <div class="shop-section-title">
                                                                <h1>Bàn phím</h1>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Start Single List  -->
                                                    <c:forEach items="${keyboard}" var="item">
                                                        <div class="single-list">
                                                            <div class="row">
                                                                <div class="col-lg-6 col-md-6 col-12">
                                                                    <div class="list-image overlay">
                                                                        <a href="productDetail?id=${item.getProductID()}">
                                                                            <img src="imageProduct/${item.getLargeImage()}" alt="#">
                                                                        </a>
                                                                        <a href="productDetail?id=${item.getProductID()}" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                                                    <div class="content">
                                                                        <h4 class="title"><a href="productDetail?id=${item.getProductID()}">${item.getProductName()}</a></h4>
                                                                        <p class="price with-discount">${item.getPrice()}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                    <!-- End Single List  -->

                                                </div>
                                                <div class="col-lg-4 col-md-6 col-12">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <div class="shop-section-title">
                                                                <h1>Tai nghe</h1>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Start Single List  -->
                                                    <c:forEach items="${headphone}" var="item">
                                                        <div class="single-list">
                                                            <div class="row">
                                                                <div class="col-lg-6 col-md-6 col-12">
                                                                    <div class="list-image overlay">
                                                                        <a href="productDetail?id=${item.getProductID()}">
                                                                            <img src="imageProduct/${item.getLargeImage()}" alt="#">
                                                                        </a>
                                                                        <a href="productDetail?id=${item.getProductID()}" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                                                    <div class="content">
                                                                        <h4 class="title"><a href="productDetail?id=${item.getProductID()}">${item.getProductName()}</a></h4>
                                                                        <p class="price with-discount">${item.getPrice()}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                    <!-- End Single List  -->
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <!-- End Shop Home List  -->

                                    <!-- Start Shop Blog  -->
                                    <!--Start of Tawk.to Script-->
                                    <script type="text/javascript">
                                        var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
                                        (function () {
                                            var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
                                            s1.async = true;
                                            s1.src = 'https://embed.tawk.to/6482066c94cf5d49dc5c9261/1h2dui7gl';
                                            s1.charset = 'UTF-8';
                                            s1.setAttribute('crossorigin', '*');
                                            s0.parentNode.insertBefore(s1, s0);
                                        })();
                                    </script>
                                    <!--End of Tawk.to Script-->
                                    <script type="text/javascript">
                                        var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
                                        (function () {
                                            var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
                                            s1.async = true;
                                            s1.src = 'https://embed.tawk.to/6482066c94cf5d49dc5c9261/1h2dui7gl';
                                            s1.charset = 'UTF-8';
                                            s1.setAttribute('crossorigin', '*');
                                            s0.parentNode.insertBefore(s1, s0);
                                        })();
                                    </script>

                                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="ti-close" aria-hidden="true"></span></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row no-gutters">
                                                        <div class="col-lg-6 offset-lg-3 col-12">
                                                            <h4 style="margin-top:100px;font-size:14px; font-weight:500; color:#F7941D; display:block; margin-bottom:5px;">Computer Shop Group2</h4>
                                                            <h3 style="font-size:30px;color:#333;">About US<h3>
                                                                    <p style="display:block; margin-top:20px; color:#888; font-size:14px; font-weight:400;"></p>
                                                                    <div class="button" style="margin-top:30px;">
                                                                        <a href="image1/lg.jpg" target="_blank" class="btn" style="color:#fff;"></a>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    <!-- Modal end -->
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    <!-- Start Footer Area -->
                                                                    <footer class="footer">
                                                                        <!-- Footer Top -->
                                                                        <div class="footer-top section">
                                                                            <div class="container">
                                                                                <div class="row">
                                                                                    <div class="col-lg-5 col-md-6 col-12">
                                                                                        <!-- Single Widget -->
                                                                                        <div class="single-footer about">

                                                                                            <p class="text">.</p>
                                                                                            <p class="call">Got Question? Call us 24/7<span><a href="tel:123456789">+0123 456 789</a></span></p>
                                                                                        </div>
                                                                                        <!-- End Single Widget -->
                                                                                    </div>
                                                                                    <div class="col-lg-2 col-md-6 col-12">
                                                                                        <!-- Single Widget -->
                                                                                        <div class="single-footer links">
                                                                                            <h4>Information</h4>
                                                                                            <ul>
                                                                                                <li><a href="#">About Us</a></li>
                                                                                                <li><a href="#">Faq</a></li>
                                                                                                <li><a href="#">Terms & Conditions</a></li>
                                                                                                <li><a href="#">Contact Us</a></li>
                                                                                                <li><a href="#">Help</a></li>
                                                                                            </ul>
                                                                                        </div>
                                                                                        <!-- End Single Widget -->
                                                                                    </div>
                                                                                    <div class="col-lg-2 col-md-6 col-12">
                                                                                        <!-- Single Widget -->
                                                                                        <div class="single-footer links">
                                                                                            <h4>Customer Service</h4>
                                                                                            <ul>
                                                                                                <li><a href="#">Payment Methods</a></li>
                                                                                                <li><a href="#">Money-back</a></li>
                                                                                                <li><a href="#">Returns</a></li>
                                                                                                <li><a href="#">Shipping</a></li>
                                                                                                <li><a href="#">Privacy Policy</a></li>
                                                                                            </ul>
                                                                                        </div>
                                                                                        <!-- End Single Widget -->
                                                                                    </div>
                                                                                    <div class="col-lg-3 col-md-6 col-12">
                                                                                        <!-- Single Widget -->
                                                                                        <div class="single-footer social">
                                                                                            <h4>Get In Tuch</h4>
                                                                                            <!-- Single Widget -->
                                                                                            <div class="contact">
                                                                                                <ul>
                                                                                                    <li>NO. 342 - London Oxford Street.</li>
                                                                                                    <li>012 United Kingdom.</li>
                                                                                                    <li>info@eshop.com</li>
                                                                                                    <li>+032 3456 7890</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                            <!-- End Single Widget -->
                                                                                            <ul>
                                                                                                <li><a href="#"><i class="ti-facebook"></i></a></li>
                                                                                                <li><a href="#"><i class="ti-twitter"></i></a></li>
                                                                                                <li><a href="#"><i class="ti-flickr"></i></a></li>
                                                                                                <li><a href="#"><i class="ti-instagram"></i></a></li>
                                                                                            </ul>
                                                                                        </div>
                                                                                        <!-- End Single Widget -->
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <!-- End Footer Top -->
                                                                        <div class="copyright">
                                                                            <div class="container">
                                                                                <div class="inner">
                                                                                    <div class="row">
                                                                                        <div class="col-lg-6 col-12">
                                                                                            <div class="left">
                                                                                                <p>Copyright © 2020 <a href="http://www.wpthemesgrid.com" target="_blank">Wpthemesgrid</a>  -  All Rights Reserved.</p>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-lg-6 col-12">
                                                                                            <div class="right">
                                                                                                <img src="images/payments.png" alt="#">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </footer>
                                                                    <!-- /End Footer Area -->

                                                                    <!-- Jquery -->
                                                                    <script src="js/jquery.min.js"></script>
                                                                    <script src="js/jquery-migrate-3.0.0.js"></script>
                                                                    <script src="js/jquery-ui.min.js"></script>
                                                                    <!-- Popper JS -->
                                                                    <script src="js/popper.min.js"></script>
                                                                    <!-- Bootstrap JS -->
                                                                    <script src="js/bootstrap.min.js"></script>
                                                                    <!-- Color JS -->
                                                                    <script src="js/colors.js"></script>
                                                                    <!-- Slicknav JS -->
                                                                    <script src="js/slicknav.min.js"></script>
                                                                    <!-- Owl Carousel JS -->
                                                                    <script src="js/owl-carousel.js"></script>
                                                                    <!-- Magnific Popup JS -->
                                                                    <script src="js/magnific-popup.js"></script>
                                                                    <!-- Waypoints JS -->
                                                                    <script src="js/waypoints.min.js"></script>
                                                                    <!-- Countdown JS -->
                                                                    <script src="js/finalcountdown.min.js"></script>
                                                                    <!-- Nice Select JS -->
                                                                    <script src="js/nicesellect.js"></script>
                                                                    <!-- Flex Slider JS -->
                                                                    <script src="js/flex-slider.js"></script>
                                                                    <!-- ScrollUp JS -->
                                                                    <script src="js/scrollup.js"></script>
                                                                    <!-- Onepage Nav JS -->
                                                                    <script src="js/onepage-nav.min.js"></script>
                                                                    <!-- Easing JS -->
                                                                    <script src="js/easing.js"></script>
                                                                    <!-- Active JS -->
                                                                    <script src="js/active.js"></script>
                                                                    <script src="js/banner.js"></script>
                                                                    <script src="js/chat.js"></script>
                                                                    </body>
                                                                    </html>
