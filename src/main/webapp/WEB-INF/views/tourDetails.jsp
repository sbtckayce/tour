<%@ page import="nlu.edu.vn.tour.models.Tour" %>
<%@ page import="nlu.edu.vn.tour.services.TourService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String tourId = request.getParameter("id");
    Tour tour = TourService.getInstance().getTourById(Long.parseLong(tourId));
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tour</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
</head>
<body>

<div class="container ">
    <h1 style="margin-top: 100px;margin-bottom: 100px" class="row justify-content-center">Chương trình chi tiết</h1>
    <div style="width: 900px;margin: 0 auto;background: #f0f0f0;padding: 10px" class="d-flex justify-content-center flex-column w-500 align-items-start">
        <div  style="display: flex;justify-content: space-between;width: 100%;">
            <h4>${tour.name}</h4>
            <h4  class="mb-0">${tour.description}</h4>
        </div>
       <div style="display: flex;justify-content: space-between;width: 100%;">
           <p >Lịch khởi hành : ${tour.days} </p>
           <p >Giá : <fmt:formatNumber type="currency" value="${tour.price}" /> </p>
       </div>
        <div style="display: flex;justify-content: space-between;width: 100%;" >
            <a href="/book-tour?id=${tour.id}" type="button" class="btn btn-primary">Đặt TOUR</a>
            <a href="/" type="button" class="btn btn-light">Chương trình tour</a>
        </div>

    </div>

</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

</body>
</html>
