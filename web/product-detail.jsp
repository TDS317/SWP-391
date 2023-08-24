<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
    <head>
        <!-- Meta Tag -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name='copyright' content=''>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Title Tag  -->
        <title>Eshop - eCommerce HTML5 Template.</title>
        <!-- Favicon -->
        <link rel="icon" type="image/png" href="images/favicon.png">
        <!-- Web Font -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <!-- StyleSheet -->
        <script src="httpsz//cdn.jsdelivr.net/npm/jqueryQB.5.1/dist/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
        <script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybonB.5.7/dist/jquery.fancybox.min.js"></script>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-zoom/1.7.21/jquery.zoom.min.js"></script>

        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/style_1.css"><!--
        -->        <link rel="stylesheet" href="css/responsive.css"><!--
        -->       <link rel="stylesheet" href="css/product.css">
        <style>
            table {
                border-collapse: collapse;
                margin: 25px 0;
                font-size: 18px;
                font-family: sans-serif;
                min-width: 400px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
            }


            table tr:first-child {
                background-color: red;
                color: white;
                text-align: left;
            }

            th,td {
                padding: 12px 15px;
            }
            tbody tr {
                border-bottom: 1px solid #dddddd;
            }

            tbody tr:nth-of-type(even) {
                background-color: #f3f3f3;
            }

            tbody tr:last-of-type {
                border-bottom: 2px solid red;
            }

            tbody tr.active-row {
                font-weight: bold;
                color: red;
            }


        </style>
    </head>
</head>
<body>
    <div>
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
                                <div class="col-12">
                                    <div class="menu-area">
                                        <!-- Main Menu -->
                                        <nav class="navbar navbar-expand-lg">
                                            <div class="navbar-collapse">	
                                                <div class="nav-inner">	
                                                    <ul class="nav main-menu menu navbar-nav">
                                                        <li class="active"><a href="#">Home</a></li>
                                                        <li><a href="#">Product</a></li>												
                                                        <li><a href="#">Service</a></li>
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
                <!--/ End Header Inner -->
        </header>

        <div class = "card-wrapper mb-3 mt-3">
            <div class = "card" >
                <!-- card left -->
                <div class = "product-imgs" >
                    <div class = "img-display" >
                        <div class = "img-showcase">
                            <a data-fancybox = "gallery" href="imageProduct/${product.getLargeImage()}"><img  class="imgSlide" src = "imageProduct/${product.getLargeImage()}" alt = "image"></a>

                            <c:forEach items="${data}" var="item">
                                <a data-fancybox = "gallery" href="${item}"><img  class="imgSlide" src = "${item}" alt = "image"></a>

                            </c:forEach>
                        </div>
                    </div>

                    <div class = "img-select">
                        <div class = "img-item">
                            <a href = "#" data-id = "1" >

                                <img class="imgSlide" src = "imageProduct/${product.getLargeImage()}" alt = "image">
                            </a>
                        </div>

                        <c:set var="count" value="1"/> 
                        <c:forEach items="${data}" var="item" >
                            <c:set var="count" value="${count + 1}" />
                            <div class = "img-item">
                                <a href = "#" data-id ="${count}">
                                    <img class="imgSlide" src = "${item}" alt = "image">
                                </a>
                            </div>
                        </c:forEach>  

                    </div>
                </div>
                <script>
                    $(document).ready(function () {
                        $('.img-showcase a').zoom();
                    });
                </script>
                <script>
                    var showcaseImages = document.querySelectorAll('.img-showcase img');
                    var selectLinks = document.querySelectorAll('.img-select a');

                    // Ẩn tất cả các ảnh trong phần showcase, trừ ảnh đầu tiên
                    for (var i = 1; i < showcaseImages.length; i++) {
                        showcaseImages[i].style.display = 'none';
                    }

                    // Xử lý sự kiện khi người dùng chọn ảnh
                    selectLinks.forEach(function (link, index) {
                        link.addEventListener('click', function (event) {
                            event.preventDefault();

                            // Hiển thị ảnh tương ứng trong phần showcase
                            for (var i = 0; i < showcaseImages.length; i++) {
                                if (i === index) {
                                    showcaseImages[i].style.display = 'block';
                                } else {
                                    showcaseImages[i].style.display = 'none';
                                }
                            }
                        });
                    });
                </script>


                <!-- card right -->

                <div class = "product-content">
                    <h2 class = "product-title">${product.getCategoryName()}</h2>
                    <a href = "#" class = "product-link">${product.getProductName()}</a>
                    <div class = "product-price">
                        <p>Price: <span>${product.getPrice()}</span></p>
                    </div>

                    <div class = "product-detail">
                        <h2>about this item: </h2>
                        ${product.getOtherDescription()}
                        <ul>
                            <li>Brand: <span>${product.getBrandName()}</span></li>
                            <li>Category: <span>${product.getCategoryName()}</span></li>
                            <li>Bảo hành: <span>${product.getGuarantee()} tháng</span></li>
                            <li>Shipping Fee: <span>Free</span></li>
                        </ul>
                    </div>

                    <div class = "purchase-info">
                        <input type = "number" min = "0" value = "1">
                        <button type = "button" class = "btn">
                            Add to Cart <i class = "fas fa-shopping-cart"></i>
                        </button>

                    </div>



                </div>

            </div>



        </div>
    </div>

    <div class="col-md-9 m-auto p-5"   style="overflow: hidden; margin: 0 auto; border: 1px solid black;overflow-style: none ">
        ${product.getDescription()}
    </div>

    <div class="col-md-9 m-auto p-5" style="overflow: hidden; margin: 0 auto; border: 1px solid black; overflow-style: none">
        <h2 style="display: inline; margin-right: 10px;">Tài liệu</h2>
        <a href="FileProduct/${product.getFile()}" download="${product.getFile()}" style="color: red;">${product.getFile()}</a>
    </div>
    <div class="product-area most-popular section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2>Các sản phẩm liên quan</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="owl-carousel popular-slider">
                        <!-- Start Single Product -->
                        <c:forEach items="${productListLienquan}" var="item">
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




    <!--/ End Single Tab -->
    <!-- Start Footer Area -->
    <footer class="footer mt-4">
        <!-- Footer Top -->
        <div class="footer-top section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6 col-12">
                        <!-- Single Widget -->
                        <div class="single-footer about">
                            <div class="logo">
                                <a href="index.jsp"><img src="images/logo2.png" alt="#"></a>
                            </div>
                            <p class="text">Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue,  magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>
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
    <!-- Fancybox JS -->
    <script src="js/facnybox.min.js"></script>
    <!-- Waypoints JS -->
    <script src="js/waypoints.min.js"></script>
    <!-- Countdown JS -->
    <script src="js/finalcountdown.min.js"></script>
    <!-- Nice Select JS -->
    <script src="js/nicesellect.js"></script>
    <!-- Ytplayer JS -->
    <script src="js/ytplayer.min.js"></script>
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
    <script src="js/scriptt.js"></script>

</body>
</html>
