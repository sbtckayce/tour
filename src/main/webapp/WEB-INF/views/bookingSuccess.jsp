<%@ page import="nlu.edu.vn.tour.models.Booking" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
    <h1 style="margin-top: 100px;margin-bottom: 100px" class="row justify-content-center">Đặt tour thành công</h1>
    <%
        Booking booking = (Booking) session.getAttribute("booking");

        if (booking != null) {
    %>

   <div style="width: 500px;margin: 0 auto;background: #f1f1f1;padding: 10px">
       <h1>Thông tin đặt vé</h1>
       <p>Tên tour: <%= booking.getTour().getName() %></p>
       <p>Thời gian: <%= booking.getTour().getDays() %></p>
       <p>Thời gian bay: <%= booking.getDepartureDate() %></p>
       <p>Tên khách hàng: <%= booking.getCustomer().getName() %></p>
       <p>Địa chỉ email: <%= booking.getCustomer().getEmail() %></p>
       <p>Số điện thoại: <%= booking.getCustomer().getPhone() %></p>
       <p>Giá vé: <%= booking.getTour().getPrice() %></p>
       <p>Số lượng trẻ em: <%= booking.getNoChildren() %></p>
       <p>Số lượng người trưởng thành: <%= booking.getNoAdults() %></p>
       <div style="display: flex;justify-content: space-between;width: 100%;" >

           <a href="/" type="button" class="btn btn-light">Trở về</a>
       </div>
   </div>
    <%
    } else {
    %>
    <p>Không có thông tin đặt vé</p>
    <%
        }
    %>


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
