<%-- 
    Document   : login
    Created on : Oct 28, 2022, 2:37:32 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

        <title>Hexashop - Product Detail Page</title>


        <!-- Additional CSS Files -->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

        <link rel="stylesheet" href="assets/css/templatemo-hexashop.css">

        <link rel="stylesheet" href="assets/css/owl-carousel.css">

        <link rel="stylesheet" href="assets/css/lightbox.css">
    </head>
    <body>

        <!-- ***** Preloader Start ***** -->
        <div id="preloader">
            <div class="jumper">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>  
        <!-- ***** Preloader End ***** -->


        <!-- ***** Header Area Start ***** -->
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
        <div class="page-heading" id="top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="inner-content">
                            <h2>Login</h2>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Main Banner Area End ***** -->


        <!-- ***** Product Area Starts ***** -->
        <section class="h-100">
            <div class="container h-100">
                <div class="row justify-content-md-center h-100">
                    <div class="card-wrapper">
                        <!-- comment 
                        <div class="brand">
                            <a href="./index.html"><img src="./img/logo.png" ></a>
                        </div>
                        -->
                        <div class="card fat">
                            <div class="card-body">
                                <h4 class="card-title">Login</h4>
                                <form name="input" action="LoginController" method="POST" class="my-login-validation" novalidate="">
                                    <!--                                    <div class="text-danger" >
                                    ${mess}
                                </div>-->
                                    <div class="form-group">
                                        <label for="username">User Name</label>
                                        <input id="username" type="username" class="form-control" name="username" value="" required autofocus>
                                        <div class="invalid-feedback">
                                            User Name is invalid
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="password">Password
                                            
                                        </label>
                                        <input id="password" type="password" class="form-control" name="password" required data-eye>
                                        <div class="invalid-feedback">
                                            Password is required
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="custom-checkbox custom-control">
                                            <input type="checkbox" name="remember" id="remember" class="custom-control-input">
                                        </div>
                                    </div>

                                    <div class="form-group m-0">
                                        <button type="submit" class="btn btn-primary btn-block" value="Login">
                                            Login
                                        </button>
                                    </div>
                                    <div class="mt-4 text-center">
                                        Don't have an account? <a href="RegisterController">Create One</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Product Area Ends ***** -->

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
        <script src="assets/js/quantity.js"></script>


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

