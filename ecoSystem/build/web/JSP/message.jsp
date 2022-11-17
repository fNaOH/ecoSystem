<%-- 
    Document   : message
    Created on : Nov 5, 2022, 9:14:44 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

<link rel="stylesheet" href="assets/css/templatemo-hexashop.css">

<link rel="stylesheet" href="assets/css/owl-carousel.css">

<link rel="stylesheet" href="assets/css/lightbox.css">
<!DOCTYPE html>
<html>
    <br> 
    <br> 
    <br> 
    <h1 style="text-align: center">Thank you for shopping</h1>
    <body>
        <br>
        <br>
        <br>
        <div>
            <h2 style="text-align: center">${message}</h2>
        </div> 
        <br>
        <br>
        <div class="col mb-2">
            <div class="row">
                <div class="col-sm-12  col-md-6">
                    <button class="btn btn-block btn-light"><a href="HomePageController">Continue Shopping</a></button>
                </div>
                <div class="col-sm-12 col-md-6 text-right">
                    <button class="btn btn-lg btn-block btn-success text-uppercase" ><a href="LogoutController">Logout</a></button>
                </div>
            </div>
        </div>

    </body>
</html>
