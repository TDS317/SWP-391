<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

    <!-- shop-list-left-sidebar31:48-->
    <head>
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

        <link rel="stylesheet" href="css/magnific-popup.min.css">

        <link rel="stylesheet" href="css/font-awesome.css">

        <link rel="stylesheet" href="css/jquery.fancybox.min.css">

        <link rel="stylesheet" href="css/themify-icons.css">

        <link rel="stylesheet" href="css/niceselect.css">

        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/flex-slider.min.css">

        <link rel="stylesheet" href="css/owl-carousel.css">

        <link rel="stylesheet" href="css/slicknav.min.css">


        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/banner.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="css/style.css">


        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">
        <!-- Material Design Iconic Font-V2.2.0 -->
        <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Font Awesome Stars-->
        <link rel="stylesheet" href="css/fontawesome-stars.css">
        <!-- Meanmenu CSS -->
        <link rel="stylesheet" href="css/meanmenu.css">
        <!-- owl carousel CSS -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <!-- Slick Carousel CSS -->
        <link rel="stylesheet" href="css/slick.css">
        <!-- Animate CSS -->
        <link rel="stylesheet" href="css/animate_1.css">
        <!-- Jquery-ui CSS -->
        <link rel="stylesheet" href="css/jquery-ui.min.css">
        <!-- Venobox CSS -->
        <link rel="stylesheet" href="css/venobox.css">
        <!-- Nice Select CSS -->
        <link rel="stylesheet" href="css/nice-select_1.css">
        <!-- Magnific Popup CSS -->
        <link rel="stylesheet" href="css/magnific-popup_1.css">
        <!-- Bootstrap V4.1.3 Fremwork CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Helper CSS -->
        <link rel="stylesheet" href="css/helper.css">
        <!-- Main Style CSS -->
        <link rel="stylesheet" href="css/style_3.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive_1.css">
        <!-- Modernizr js -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        <style>
            input[type="checkbox"] {
                display: inline-block;
            }
            @media only screen and (max-width: 480px) {
                .nav.main-menu.menu.navbar-nav {
                    font-size: 14px;
                }
            }

        </style>

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
                                                    <li class="active"><a href="Home">Home</a></li>
                                                    <li><a href="product">Product</a></li>												
                                                    <li><a href="About-us">About Us</a></li>
                                                    <li><a href="">Shop<i class="ti-angle-down"></i><span class="new">New</span></a>
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
            <!-- Header Logo Area End Here -->
            <!-- Begin Header Middle Right Area -->




            <!-- Header Middle Area End Here -->
            <!-- Begin Header Bottom Area -->

        </div>
        <!-- Header Bottom Area End Here -->
        <!-- Begin Mobile Menu Area -->
        <div class="mobile-menu-area d-lg-none d-xl-none col-12">
            <div class="container"> 
                <div class="row">
                    <div class="mobile-menu">
                    </div>
                </div>
            </div>
        </div>
        <!-- Mobile Menu Area End Here -->
    </header>
    <!-- Header Area End Here -->
    <!-- Begin Li's Breadcrumb Area -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="breadcrumb-content">

            </div>
        </div>
    </div>
    <!-- Li's Breadcrumb Area End Here -->
    <!-- Begin Li's Content Wraper Area -->
    <div class="content-wraper pt-60 pb-60">

        <div class="container">
            <div class="row">
                <div class="col-lg-9 order-1 order-lg-2" >

                    <div class="menu-area">
                        <!-- Main Menu -->
                        <nav class="navbar navbar-expand-lg">
                            <div class="navbar-collapse">	
                                <div class="nav-inner">	
                                    <ul class="nav main-menu menu navbar-nav" style="font-size: 200%">
                                        <c:set var="cid" value="${requestScope.cid}"/>
                                        <ul class="menu">
                                            <a class="${cid==0?"active":""}" href="product?cid=${0}">ALL</a>
                                            <c:forEach items="${listCategorys}" var="c">
                                                <a href="product?cid=${c.getCategoryID()}">${c.getCategoryName()}</a>
                                            </c:forEach>
                                        </ul>

                                    </ul>
                                </div>
                            </div>
                        </nav>
                        <!--/ End Main Menu -->	
                    </div>
                    <!-- Begin Li's Banner Area -->
                    <div class="single-banner shop-page-banner">
                        <a href="#">
                            <img src="images/bg-banner/2.jpg" alt="Li's Static Banner">
                        </a>
                    </div>
                    <!-- Li's Banner Area End Here -->
                    <!-- shop-top-bar start -->
                    <div class="shop-top-bar mt-30">
                        <div class="shop-bar-inner">
                            <div class="product-view-mode">
                                <!-- shop-item-filter-list start -->
                                <ul class="nav shop-item-filter-list" role="tablist">
                                    <li role="presentation"><a data-toggle="tab" role="tab" aria-controls="grid-view" href="#grid-view"><i class="fa fa-th"></i></a></li>
                                    <li class="active" role="presentation"><a aria-selected="true" class="active show" data-toggle="tab" role="tab" aria-controls="list-view" href="#list-view"><i class="fa fa-th-list"></i></a></li>
                                </ul>
                                <!-- shop-item-filter-list end -->
                            </div>
                            <div class="toolbar-amount">
                                <span>Showing 1 to 9 of 15</span>
                            </div>
                        </div>
                        <!-- product-select-box start -->
                        <div class="product-select-box">
                            <div class="product-short">
                                <form action="product" method="get">
                                    <p>Sort By:</p>
                                    <select class="nice-select" name="sortOption">
                                        <option value="relevance">Relevance</option>
                                        <option value="name-asc">Name (A - Z)</option>
                                        <option value="name-desc">Name (Z - A)</option>
                                        <option value="pricehigh">Price (Thấp Đến Cao)</option>
                                        <option value="pricelow">Model (cao Đến Thấp)</option>
                                    </select>
                                    <button type="submit">Submit</button>
                                </form>
                            </div>
                        </div>
                        <!-- product-select-box end -->
                    </div>
                    <!-- shop-top-bar end -->
                    <!-- shop-products-wrapper start -->
                    <div class="shop-products-wrapper">
                        <div class="tab-content">
                            <div id="grid-view" class="tab-pane fade" role="tabpanel">
                                <div class="product-area shop-product-area">
                                    <div class="row">
                                        <c:forEach items="${listProductClient}" var="item">
                                            <div class="col-lg-4 col-md-4 col-sm-6 mt-40">
                                                <!-- single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="productDetail?id=${item.getProductID()}">
                                                            <img src="imageProduct/${item.getLargeImage()}" alt="Product Image">
                                                        </a>
                                                        <span class="sticker">New</span>
                                                    </div>
                                                    <div class="product_desc">
                                                        <div class="product_desc_info">
                                                            <div class="product-review">
                                                                <h5 class="manufacturer">
                                                                    <a href="productDetail?id=${item.getProductID()}">View Details</a>
                                                                </h5>
                                                            </div>
                                                            <h4><a class="product_name" href="productDetail?id=${item.getProductID()}">${item.getProductName()}</a></h4>
                                                            <div class="price-box">
                                                                <span class="new-price">${item.getPrice()} đ</span>
                                                            </div>
                                                        </div>
                                                        <div class="add-actions">
                                                            <ul class="add-actions-link">
                                                                <li class="add-cart active"><a href="shopping-cart.html">Add to cart</a></li>
                                                                <li><a class="links-details" href="wishlist.html"><i class="fa fa-heart-o"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single-product-wrap end -->
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div id="list-view" class="tab-pane fade product-list-view active show" role="tabpanel">
                                <div class="row">

                                    <div class="col">
                                        <c:forEach items="${listProductClient}" var="item">
                                            <div class="row product-layout-list">

                                                <div class="col-lg-3 col-md-5 ">
                                                    <div class="product-image">
                                                        <a href="productDetail?id=${item.getProductID()}">
                                                            <img src="imageProduct/${item.getLargeImage()}" alt="Product Image">
                                                        </a>
                                                        <span class="sticker">New</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-5 col-md-7">
                                                    <div class="product_desc">
                                                        <div class="product_desc_info">
                                                            <div class="product-review">
                                                                <h5 class="manufacturer">
                                                                    <a href="productDetail?id=${item.getProductID()}">Graphic Corner</a>
                                                                </h5>

                                                            </div>
                                                            <h4><a class="product_name" href="productDetail?id=${item.getProductID()}">${item.getProductName()}</a></h4>
                                                            <div class="price-box">
                                                                <span class="new-price">${item.getPrice()} đ</span>
                                                            </div>
                                                            <p>${product.getDescription()}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="shop-add-action mb-xs-30">
                                                        <ul class="add-actions-link">
                                                            <li class="add-cart"><a href="#">Add to cart</a></li>
                                                            <li class="wishlist"><a href="wishlist.html"><i class="fa fa-heart-o"></i>Add to wishlist</a></li>
                                                            <li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i>Quick view</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                        </c:forEach>

                                    </div>

                                </div>
                            </div>
                            <div class="paginatoin-area">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">                                        
                                        <c:if test="${size == 0}">
                                            <div class="text-center" style="text-align: center; margin: auto">
                                                <span>Không tìm thấy sản phẩm</span>
                                            </div>
                                        </c:if>      

                                    </div>
                                    <c:if test="${listProductClient != null && !empty listProductClient}">
                                        <div class="col-lg-6 col-md-6">
                                            <ul class="pagination-box">
                                                <c:if test="${page == 1}">
                                                    <li class="paginate_button page-item previous disabled" id="sampleTable_previous">
                                                        <p aria-controls="sampleTable" data-dt-idx="0" tabindex="0" class="page-link3"
                                                           style="border-radius: 0.25rem 0 0 0.25rem">Lùi</p>
                                                    </li>
                                                </c:if>
                                                <c:if test="${page != 1}">
                                                    <li class="paginate_button page-item previous disabled" id="sampleTable_previous">
                                                        <a href="product?page=${page-1}&key=${key}&entryperpage=${entryperpage}&num= ${num}&order=2" 
                                                           aria-controls="sampleTable" data-dt-idx="0" tabindex="0" class="page-link2"
                                                           style="border-radius: 0.25rem 0 0 0.25rem">Lùi</a>
                                                    </li>
                                                </c:if>
                                                <c:forEach begin="1" end="${num}" var="i">
                                                    <c:if test="${page != null && i == page}">
                                                        <li class="paginate_button page-item active">
                                                            <p aria-controls="sampleTable" data-dt-idx="2" tabindex="0" class="page-link3"
                                                               style="border-radius: 0 0.25rem 0.25rem 0">${i}</p>
                                                        </li>
                                                    </c:if>
                                                    <c:if test="${i != page}">
                                                        <li class="paginate_button page-item next disabled" id="sampleTable_next">
                                                            <a href="product?page=${i}&key=${key}&entryperpage=${entryperpage}&num= ${num}&order=2"
                                                               aria-controls="sampleTable" data-dt-idx="2" tabindex="0" class="page-link2"
                                                               style="border-radius: 0 0.25rem 0.25rem 0">${i}</a>
                                                        </li>
                                                    </c:if>
                                                </c:forEach>
                                                <c:if test="${page == num}">
                                                    <li class="paginate_button page-item next disabled" id="sampleTable_next">
                                                        <p aria-controls="sampleTable" data-dt-idx="2" tabindex="0" class="page-link3"
                                                           style="border-radius: 0 0.25rem 0.25rem 0">Tiếp</p>
                                                    </li>
                                                </c:if>       
                                                <c:if test="${page != num}">
                                                    <li class="paginate_button page-item next disabled" id="sampleTable_next">
                                                        <a href="product?page=${page+1}&key=${key}&entryperpage=${entryperpage}&num= ${num}&order=2"
                                                           aria-controls="sampleTable" data-dt-idx="2" tabindex="0" class="page-link2"
                                                           style="border-radius: 0 0.25rem 0.25rem 0">Tiếp</a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </div>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- shop-products-wrapper end -->
                </div>
                <div class="col-lg-3 order-2 order-lg-1">
                    <!--sidebar-categores-box start  -->
                    <div class="sidebar-categores-box mt-sm-30 mt-xs-30">
                        <div class="sidebar-title">
                            <h2>Danh Mục</h2>
                        </div>
                        <!-- category-sub-menu start -->
                        <div class="category-sub-menu">
                            <ul>
                                <li><a href="#" style="color: red">SẢN PHẨM MỚI</a>
                                </li>
                                <li><a href="# ">SẢN PHẨM GIẢM GIÁ</a>
                                </li>
                                <li><a href="#">SẢN PHẨM HOT</a>
                                </li>
                                <li><a href="#">SẢN PHẨM NỔI BẬT</a>
                                </li>

                            </ul>
                        </div>
                        <!-- category-sub-menu end -->
                    </div>
                    <!--sidebar-categores-box end  -->
                    <!--sidebar-categores-box start  -->

                    <!-- filter-sub-area end -->
                    <!-- filter-sub-area start -->
                    <div class="sidebar-categores-box">

                        <div class="sidebar-title">
                            <h2>LỌC SẢN PHẨM</h2>
                        </div>
                        <!-- btn-clear-all start -->

                        <!-- btn-clear-all end -->
                        <!-- filter-sub-area start -->
                        <div class="filter-sub-area">                                
                            <h5 class="filter-sub-titel">THƯƠNG HIỆU</h5>
                            <div class="categori-checkbox">                                
                                <ul>
                                    <li><input type="checkbox" name="productBrand" value="0">Tất cả</a></li>
                                        <c:forEach items="${brand}" var="item">
                                        <li><input type="checkbox"  name="productBrand" value="${item.getBrandID()}">${item.getBrandName()}</a></li>
                                        </c:forEach>
                                </ul>                                
                            </div>
                        </div>
                        <!-- filter-sub-area end -->
                        <!-- filter-sub-area start -->
                        <form id="categoryId" action="product">
                            <div class="filter-sub-area pt-sm-10 pt-xs-10">
                                <h5 class="filter-sub-titel" >LOẠI SẢN PHẨM </h5>
                                <div class="categori-checkbox">
                                    <ul>  
                                        <li>
                                            <input type="checkbox" id="c0"
                                                   name="categoris"
                                                   ${checkcid[0]?"checked":""}
                                                   value="${0}" onclick="setCheckCategory(this)"/>Tất cả<br/>
                                        </li>    

                                        <c:forEach begin="0" end="${listCategorys.size()-1}" var="i">
                                            <li><input type="checkbox" id="cm"
                                                       name="categoris"                                                        
                                                       value="${listCategorys.get(i).getCategoryID()}" 
                                                       ${checkcid[i+1]?"checked":""} 
                                                       onclick="setCheckCategory(this)"
                                                       >${listCategorys.get(i).getCategoryName()}</li>
                                            </c:forEach>

                                    </ul>
                                </div>
                            </div>
                        </form>

                        <div class="filter-sub-area pt-sm-10 pt-xs-10">
                            <h5 class="filter-sub-titel">GIÁ SẢN PHẨM</h5>
                            <div class="categori-checkbox">
                                <ul>   

                                    <li>
                                        <input type="checkbox" id="p0"
                                               name="prices"
                                               ${priceCheck[0]?"checked":""}
                                               value="0" onclick="setCheckCategory(this)"/>Tất cả<br/>
                                    </li>

                                    <c:forEach begin="0" end="${3}" var="i">
                                        <li><input type="checkbox" id="pm"
                                                   name="prices"                                                       
                                                   value="${(i+1)}" 
                                                   ${priceCheck[i+1]?"checked":""}   onclick="setCheckCategory(this)"
                                                   >${priceCheckBox[i+1]}</li>
                                        </c:forEach>


                                </ul>
                            </div>
                        </div>

                        <div class="filter-sub-area pt-sm-10 pt-xs-10">
                            <h5 class="filter-sub-titel">RAM</h5>
                            <div class="categori-checkbox">                                
                                <ul>     
                                    <li><input type="checkbox" name="product-categori"><a href="#">Tất cả</a></li>
                                    <li><input type="checkbox" name="product-categori"><a href="#">4GB</a></li>
                                    <li><input type="checkbox" name="product-categori"><a href="#">8GB</a></li>
                                    <li><input type="checkbox" name="product-categori"><a href="#">16GB</a></li>
                                    <li><input type="checkbox" name="product-categori"><a href="#">32GB</a></li>
                                </ul>                                
                            </div>
                        </div>
                        <div class="filter-sub-area pt-sm-10 pt-xs-10">
                            <h5 class="filter-sub-titel">CPU</h5>
                            <div class="categori-checkbox">                                
                                <ul>                            
                                    <li><input type="checkbox" name="product-categori"><a href="#">Tất cả</a></li>
                                    <li><input type="checkbox" name="product-categori"><a href="#">AMD</a></li>
                                    <li><input type="checkbox" name="product-categori"><a href="#">Intel Core i3</a></li>
                                    <li><input type="checkbox" name="product-categori"><a href="#">Intel Core i5</a></li>
                                </ul>                                
                            </div>
                        </div>
                        <br>
                        <li><a href="#" style="color: red; text-align:center">XÓA TẤT CẢ</a></li>

                    </div>
                    <!--sidebar-categores-box end  -->



                </div>
            </div>
        </div> 
    </div>
    <!-- Body Wrapper End Here -->
    <!-- jQuery-V1.12.4 -->
    <script type="text/javascript">
        function setCheckCategory(obj) {
            var friesCategoris = document.getElementsByName('categoris');
            if (friesCategoris !== null) {
                if ((obj.id == 'c0') && (friesCategoris[0].checked == true))
                {
                    for (var i = 1; i < friesCategoris.length; i++)
                        friesCategoris[i].checked = false;
                } else {
                    for (var i = 1; i < friesCategoris.length; i++) {
                        if (friesCategoris[i].checked == true) {
                            friesCategoris[0].checked = false;
                            break;
                        }
                    }
                }
            }
            document.getElementById('categoryId').submit();
        }
    </script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/vendor/popper.min.js"></script>
    <!-- Bootstrap V4.1.3 Fremwork js -->
    <script src="js/bootstrap.mi.js"></script>
    <!-- Ajax Mail js -->
    <script src="js/ajax-mail.js"></script>
    <!-- Meanmenu js -->
    <script src="js/jquery.meanmenu.min.js"></script>
    <!-- Wow.min js -->
    <script src="js/wow.min.js"></script>
    <!-- Slick Carousel js -->
    <script src="js/slick.min.js"></script>
    <!-- Owl Carousel-2 js -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- Magnific popup js -->
    <script src="js/jquery.magnific-popup.min.js"></script>
    <!-- Isotope js -->
    <script src="js/isotope.pkgd.min.js"></script>
    <!-- Imagesloaded js -->
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <!-- Mixitup js -->
    <script src="js/jquery.mixitup.min.js"></script>
    <!-- Countdown -->
    <script src="js/jquery.countdown.min.js"></script>
    <!-- Counterup -->
    <script src="js/jquery.counterup.min.js"></script>
    <!-- Waypoints -->
    <script src="js/waypoints.mi.js"></script>
    <!-- Barrating -->
    <script src="js/jquery.barrating.mi.js"></script>
    <!-- Jquery-ui -->
    <script src="js/jquery-ui.mi.js"></script>
    <!-- Venobox -->
    <script src="js/venobox.min.js"></script>
    <!-- Nice Select js -->
    <script src="js/jquery.nice-select.min.js"></script>
    <!-- ScrollUp js -->
    <script src="js/scrollUp.min.js"></script>
    <!-- Main/Activator js -->
    <script src="js/main_1.js"></script>

</body>

<!-- shop-list-left-sidebar31:48-->
</html>
