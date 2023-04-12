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


    <form method="POST" action="/book-tour" style="width: 500px;margin: 0 auto;">
        <input type="hidden" name="tourId" value="${tour.id}">
        <label style="font-size: 20px;font-weight: bold" class="col-form-label">Thông tin khách hàng </label>
        <div class="form-group">
            <label class="col-form-label">Họ và tên </label>
            <input style="width: 400px" class="form-control" required type="text" name="fullName"
                   placeholder="Nhập họ tên">
        </div>
        <div class="form-group">
            <label class="col-form-label">Địa chỉ </label>
            <input style="width: 400px" class="form-control" required type="text" name="address"
                   placeholder="Nhập địa chỉ">
        </div>
        <div class="form-group">
            <label class="col-form-label">Email</label>
            <input style="width: 400px" class="form-control" required type="text" name="email" placeholder="Nhập email">
        </div>
        <div class="form-group">
            <label class="col-form-label">Điện thoại</label>
            <input style="width: 400px" class="form-control" required type="text" name="phone"
                   placeholder="Nhập số điện thoại">
        </div>
        <label style="font-size: 20px;font-weight: bold" class="col-form-label">Thông tin Chuyến đi </label>

        <div class="form-group">
            <label class="col-form-label">Ngày khởi hành </label>
            <input style="width: 400px" class="form-control" required type="date" name="departureDate"
                   placeholder="Chọn ngày khởi hành">
        </div>
        <div class="form-group">
            <label class="col-form-label">Số người lớn </label>
            <input style="width: 400px" class="form-control" required type="number" name="noAdults"
                   placeholder="Nhập số người lớn">
        </div>
        <div class="form-group">
            <label class="col-form-label">Số trẻ em</label>
            <input style="width: 400px" class="form-control" required type="number" name="noChildren"
                   placeholder="Nhập số trẻ em">
        </div>
        <button onclick="saveBooking()" type="submit" class="btn btn-primary">Gửi</button>
        <a href="/" type="button" class="btn btn-light">Hủy</a>
    </form>


</div>
<script>
    function saveBooking() {
        const name = document.getElementById("name") !== null ? document.getElementById("name").value : "";
        const address = document.getElementById("address") !== null ? document.getElementById("address").value : "";
        const email = document.getElementById("email") !== null ? document.getElementById("email").value : "";
        const phone = document.getElementById("phone") !== null ? document.getElementById("phone").value : "";
        const departureDate = document.getElementById("departureDate") !== null ? document.getElementById("departureDate").value : "";
        const noAdults = document.getElementById("noAdults") !== null ? document.getElementById("noAdults").value : "";
        const noChildren = document.getElementById("noChildren") !== null ? document.getElementById("noChildren").value : "";



            const data = {
                "name": name,
                "address": address,
                "email": email,
                "phone": phone,
                "departureDate": departureDate,
                "noAdults":noAdults,
                "noChildren": noChildren
            };

        $.ajax({
            url: "/book-tour",
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(data),
            success: function () {
                alert("Đặt tour thành công!");
            },
            error: function () {
                alert("Đã có lỗi xảy ra!");
            }
        });

    }
</script>
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
