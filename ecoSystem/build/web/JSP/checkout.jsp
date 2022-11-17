<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Bootstrap 5 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">


        <!-- Demo CSS (No need to include it into your project) -->
        <link rel="stylesheet" href="css/demo.css">

    </head>
    <body>
        <header class="intro">
            


        </header>

        <main>

            <!-- DEMO HTML -->
            <div class="container">
                <div class="py-5 text-center">

                    <h2>Checkout </h2>
                </div>

                <div class="row">
                    <div class="col-md-4 order-md-2 mb-4">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-muted">Your cart</span>
                            <span class="badge badge-secondary badge-pill">3</span>
                        </h4>
                        <ul class="list-group mb-3">
                            <c:forEach var="item" items="${sessionScope.cart}">
                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                <div>
                                    <h6 class="my-0">${item.key.product_name} x ${item.value}</h6>
                                    <small class="text-muted">${item.key.brand}</small>
                                </div>
                                <span class="text-muted">$ ${item.key.list_price}</span>
                            </li>
                            </c:forEach>
                            
                            <li class="list-group-item d-flex justify-content-between">
                                <span>Total (USD)</span>
                                <strong>${sessionScope.total}</strong>
                            </li>
                        </ul>
                        
                    </div>
                    <div class="col-md-8 order-md-1">
                        <h4 class="mb-3">Billing address</h4>
                        <form class="needs-validation" novalidate action="CheckoutController" method="post">
                            <input type="hidden" name="customer_id" value="${customer.customer_id}"/>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    
                                    <label for="name">Name</label>
                                    <input type="text" class="form-control" id="name" name="name" placeholder="" readonly value="${customer.name}" required>
                                    
                                </div>
                                
                            </div>

                            <div class="mb-3">
                                <label for="username">Username</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">@</span>
                                    </div>
                                    <input type="text" class="form-control" id="username" placeholder="Username" readonly value="${sessionScope.acc.username}" required>
                                    <div class="invalid-feedback" style="width: 100%;">
                                        Your username is required.
                                    </div>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="phone">Phone <span class="text-muted"></span></label>
                                <input type="email" class="form-control" id="phone" name="phone" readonly placeholder="" value="${customer.phone}">
                                <div class="invalid-feedback">
                                    Phone is required.
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="address">Address</label>
                                <input type="text" class="form-control" id="address" name="address" placeholder="" value="${customer.address}" required>
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>



                           
                                <button class="btn btn-primary btn-lg btn-block" ><a href="HomePageController" style="color: white">Continue to shopping</a></button>
                            <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>
                        </form>
                    </div>
                </div>

                <footer class="my-5 pt-5 text-muted text-center text-small">
                    <p class="mb-1">&copy; NaOH</p>
                    <ul class="list-inline">
                        <li class="list-inline-item"><a href="#">Privacy</a></li>
                        <li class="list-inline-item"><a href="#">Terms</a></li>
                        <li class="list-inline-item"><a href="#">Support</a></li>
                    </ul>
                </footer>
            </div>
            <!-- End Demo HTML -->

        </main>


        <!-- Bootstrap 5 JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    </body>
</html>


<style>
/*    @import url('https://fonts.googleapis.com/css?family=Roboto&display=swap');
    @import url('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');*/
    *{
        margin: 0;
        padding: 0;
    }
    body{
        font-family: 'Roboto', sans-serif;
        font-style: normal;
        font-weight: 300;
        font-smoothing: antialiased;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        font-size: 15px;
        background: #eee;
    }
    .intro{
        background: #fff;
        padding: 60px 30px;
        color: #333;
        margin-bottom: 15px;
        line-height: 1.5;
        text-align: center;
    }
    .intro h1 {
        font-size: 18pt;
        padding-bottom: 15px;

    }
    .intro p{
        font-size: 14px;
    }

    .action{
        text-align: center;
        display: block;
        margin-top: 20px;
    }

    a.btn {
        text-decoration: none;
        color: #666;
        border: 2px solid #666;
        padding: 10px 15px;
        display: inline-block;
        margin-left: 5px;
    }
    a.btn:hover{
        background: #666;
        color: #fff;
        transition: .3s;
        -webkit-transition: .3s;
    }
    .btn:before{
        font-family: FontAwesome;
        font-weight: normal;
        margin-right: 10px;
    }
    .github:before{
        content: "\f09b"
    }
    .down:before{
        content: "\f019"
    }
    .back:before{
        content:"\f112"
    }
    .credit{
        background: #fff;
        padding: 12px;
        font-size: 9pt;
        text-align: center;
        color: #333;
        margin-top: 40px;

    }
    .credit span:before{
        font-family: FontAwesome;
        color: #e41b17;
        content: "\f004";


    }
    .credit a{
        color: #333;
        text-decoration: none;
    }
    .credit a:hover{
        color: #1DBF73;
    }
    .credit a:hover:after{
        font-family: FontAwesome;
        content: "\f08e";
        font-size: 9pt;
        position: absolute;
        margin: 3px;
    }
    main{
        background: #fff;
        padding: 20px;

    }

    article li{
        color: #444;
        font-size: 15px;
        margin-left: 33px;
        line-height: 1.5;
        padding: 5px;
    }
    article h1,
    article h2,
    article h3,
    article h4,
    article p{
        padding: 14px;
        color: #333;
    }
    article p{
        font-size: 15px;
        line-height: 1.5;
    }

    @media only screen and (min-width: 1280px){
        main{
            max-width: 960px;
            margin-left: auto;
            margin-right: auto;
            padding: 24px;
        }


    }

    .set-overlayer,
    .set-glass,
    .set-sticky {
        cursor: pointer;
        height: 45px;
        line-height: 45px;
        padding: 0 15px;
        color: #333;
        font-size: 16px;
    }
    .set-overlayer:after,
    .set-glass:after,
    .to-active:after,
    .set-sticky:after {
        font-family: FontAwesome;
        font-size: 18pt;
        position: relative;
        float: right;
    }
    .set-overlayer:after,
    .set-glass:after,
    .set-sticky:after {
        content: "\f204";
        transition: .6s;
    }

    .to-active:after {
        content: "\f205";
        color: #008080;
        transition: .6s;
    }
    .set-overlayer,
    .set-glass,
    .set-sticky,
    .source,
    .theme-tray {
        margin: 10px;
        background: #f2f2f2;
        border-radius: 5px;
        border: 2px solid #f1f1f1;
        box-sizing: border-box;
    }
    /* Syntax Highlighter*/

    pre.prettyprint {
        padding: 15px !important;
        margin: 10px;
        border: 0 !important;
        background: #f2f2f2;
        overflow: auto;
    }

    .source {
        white-space: pre;
        overflow: auto;
        max-height: 400px;
    }
    code{
        border:1px solid #ddd;
        padding: 2px;
        border-radius: 2px;
    }

</style>