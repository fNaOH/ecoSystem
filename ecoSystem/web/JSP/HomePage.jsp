<%-- 
    Document   : HomePage
    Created on : Oct 28, 2022, 9:54:56 PM
    Author     : Asus
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

        <title>NaOH Shopping Online</title>

        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

        <link rel="stylesheet" href="assets/css/templatemo-hexashop.css">

        <link rel="stylesheet" href="assets/css/owl-carousel.css">

        <link rel="stylesheet" href="assets/css/lightbox.css">
    </head>
    <body>

        <div id="preloader">
            <div class="jumper">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>  

        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ***** Logo Start ***** -->
                            <a href="HomePageController" class="logo">
                                <img src="assets/images/logo.png">
                            </a>
                            <!-- ***** Logo End ***** -->

                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li class="scroll-to-section"><a href="HomePageController" class="active">Home</a></li>
                                <li class="scroll-to-section"><a href="ProByCateController?category_name=xe ô tô">Car</a></li>
                                <li class="scroll-to-section"><a href="ProByCateController?category_name=plane">plane</a></li>
                                <li class="scroll-to-section"><a href="ProByCateController?category_name=xe motor">Motor-bike</a></li>
                                <li><a href="ProductController">Products</a></li>
                                

                                <c:if test="${sessionScope.acc.isStaff == 1}">
                                    <li class="submenu">
                                        <a href="javascript:;">Manager</a>
                                        <ul>
                                            <li><a href="#"> Manager Account</a></li>
                                            <li><a href="#"> Manager Product</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.acc.isCustomer == 1}">
                                    <li><a href="CartController"> Cart</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.acc != null}">
                                    <li > Hello ${sessionScope.acc.username}</li>
                                    <a  href="LogoutController">Logout</a>
                                </c:if>

                                <c:if test="${sessionScope.acc == null}">
                                    <li><a href="LoginController"></i> Login</a></li>
                                    </c:if>


                            </ul>        
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ***** Header Area End ***** -->

        <!-- ***** Main Banner Area Start ***** -->
        <div class="main-banner" id="top">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="left-content">
                            <div class="thumb">
                                <div class="inner-content">
                                    <h4>NaOH</h4>
                                    <span>All Products</span>
                                    <div class="main-border-button">
                                        <a href="ProductController">Purchase Now!</a>
                                    </div>
                                </div>
                                <img src="assets/images/-9396-1664062200.jpg" alt="" style="width: 729.6px; height: 628px">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="right-content">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="right-first-image">
                                        <div class="thumb">
                                            <div class="inner-content">
                                                <h4>Plane</h4>
                                                
                                            </div>
                                            <div class="hover-content">
                                                <div class="inner">
                                                    <h4>Plane</h4>
                                                    
                                                    <div class="main-border-button">
                                                        <a href="ProByCateController?category_name=plane">Discover More</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <img src="assets/images/may-bay-1.jpg" style="width: 349.8px; height: 299.83px">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="right-first-image">
                                        <div class="thumb">
                                            <div class="inner-content">
                                                <h4>Car</h4>
                                                
                                            </div>
                                            <div class="hover-content">
                                                <div class="inner">
                                                    <h4>Car</h4>
                                                    
                                                    <div class="main-border-button">
                                                        <a href="ProByCateController?category_name=xe ô tô">Discover More</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <img src="assets/images/aspark-owl_fxcn.jpg" style="width: 349.8px; height: 299.83px">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="right-first-image">
                                        <div class="thumb">
                                            <div class="inner-content">
                                                <h4>Motor-bike</h4>
                                                
                                            </div>
                                            <div class="hover-content">
                                                <div class="inner">
                                                    <h4>Motor-bike</h4>
                                                    
                                                    <div class="main-border-button">
                                                        <a href="ProByCateController?category_name=xe motor">Discover More</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <img src="assets/images/motorbike_69587620.jpg " style="width: 349.8px; height: 299.83px">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="right-first-image">
                                        <div class="thumb">
                                            <div class="inner-content">
                                                <h4>About</h4>
                                                <span>Best Trend Accessories</span>
                                            </div>
                                            <div class="hover-content">
                                                <div class="inner">
                                                    <h4>About</h4>

                                                    <div class="main-border-button">
                                                        <a href="#">Discover More</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <img src="assets/images/Cloud-Blog.png" style="width: 349.8px; height: 299.83px">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Main Banner Area End ***** -->

        <!-- ***** Men Area Starts ***** -->
        <section class="section" id="men">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="section-heading">
                            <a href="ProByCateController?category_name=xe ô tô"><h2>Car's Latest</h2></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="men-item-carousel">
                            <div class="owl-men-item owl-carousel">
                                <c:forEach items="${cars}" var="car">
                                    <div class="item">
                                        <div class="thumb">
                                            <div class="hover-content">
                                                <ul>
                                                    <li><a href="DetailController?id=${car.product_id}"><i class="fa fa-eye"></i></a></li>                                            
                                                    <li><a href="CartController?id=${car.product_id}"><i class="fa fa-shopping-cart"></i></a></li>
                                                </ul>
                                            </div>
                                            <img src="${car.img}" alt=""  style="height: 265px">
                                        </div>
                                        <div class="down-content">
                                            <h4>${car.product_name}</h4>
                                            <span>${car.list_price} USD</span>

                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Men Area Ends ***** -->

        <!-- ***** Women Area Starts ***** -->
        <section class="section" id="women">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="section-heading">
                            <a href="ProByCateController?category_name=plane"><h2>Plane's Latest</h2></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="women-item-carousel">
                            <div class="owl-women-item owl-carousel">
                                <c:forEach items="${planes}" var="plane">
                                    <div class="item">
                                        <div class="thumb">
                                            <div class="hover-content">
                                                <ul>
                                                    <li><a href="DetailController?id=${plane.product_id}"><i class="fa fa-eye"></i></a></li>                                            
                                                    <li><a href="CartController?id=${plane.product_id}"><i class="fa fa-shopping-cart"></i></a></li>
                                                </ul>
                                            </div>
                                            <img src="${plane.img}" alt=""  style="height: 265px">
                                        </div>
                                        <div class="down-content">
                                            <h4>${plane.product_name}</h4>
                                            <span>${plane.list_price} USD</span>

                                        </div>
                                    </div>
                                </c:forEach>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Women Area Ends ***** -->

        <!-- ***** Kids Area Starts ***** -->
        <section class="section" id="kids">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="section-heading">
                            <a href="ProByCateController?category_name=xe motor"><h2>Motor-bike's Latest</h2></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="kid-item-carousel">
                            <div class="owl-kid-item owl-carousel">
                                <c:forEach items="${motors}" var="motor">
                                    <div class="item">
                                        <div class="thumb">
                                            <div class="hover-content">
                                                <ul>
                                                    <li><a href="DetailController?id=${motor.product_id}"><i class="fa fa-eye"></i></a></li>                                            
                                                    <li><a href="CartController?id=${motor.product_id}"><i class="fa fa-shopping-cart"></i></a></li>
                                                </ul>
                                            </div>
                                            <img src="${motor.img}" alt=""  style="height: 265px">
                                        </div>
                                        <div class="down-content">
                                            <h4>${motor.product_name}</h4>
                                            <span>${motor.list_price} USD</span>

                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- ***** Footer Start ***** -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="first-item">
                            <div class="logo">
                                <img src="assets/images/white-logo.png" alt="hexashop ecommerce templatemo">
                            </div>
                            <ul>
                                <li><a href="#">Hoa Lac, Ha Noi, Viet Nam</a></li>
                                <li><a href="#">hoannkhe153239@fpt.edu.vn</a></li>
                                <li><a href="#">032 606 2667</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <h4>Shopping &amp; Categories</h4>
                        <ul>
                            <li><a href="ProByCateController?category_name=xe ô tô">Car’s Shopping</a></li>
                            <li><a href="ProByCateController?category_name=plane">Plane’s Shopping</a></li>
                            <li><a href="ProByCateController?category_name=xe motor">Motor-bike's Shopping</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3">
                        <h4>Useful Links</h4>
                        <ul>
                            <li><a href="HomePageController">Homepage</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Help</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3">
                        <h4>Help &amp; Information</h4>
                        <ul>
                            <li><a href="#">Help</a></li>
                            <li><a href="#">FAQ's</a></li>
                            <li><a href="#">Shipping</a></li>
                            <li><a href="#">Tracking ID</a></li>
                        </ul>
                    </div>
                    
                </div>
            </div>
        </footer>


        <!-- jQuery -->
        <script src="assets/js/jquery-2.1.0.min.js"></script>

        <!-- Bootstrap -->
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Plugins -->
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/accordions.js"></script>
        <script src="assets/js/datepicker.js"></script>
        <script src="assets/js/scrollreveal.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <script src="assets/js/imgfix.min.js"></script> 
        <script src="assets/js/slick.js"></script> 
        <script src="assets/js/lightbox.js"></script> 
        <script src="assets/js/isotope.js"></script> 

        <!-- Global Init -->
        <script src="assets/js/custom.js"></script>

        <script>

            $(function () {
                var selectedClass = "";
                $("p").click(function () {
                    selectedClass = $(this).attr("data-rel");
                    $("#portfolio").fadeTo(50, 0.1);
                    $("#portfolio div").not("." + selectedClass).fadeOut();
                    setTimeout(function () {
                        $("." + selectedClass).fadeIn();
                        $("#portfolio").fadeTo(50, 1);
                    }, 500);

                });
            });

        </script>
    </body>
</html>
