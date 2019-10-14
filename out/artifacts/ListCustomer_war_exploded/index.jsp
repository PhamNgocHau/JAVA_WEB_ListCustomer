%--
Created by IntelliJ IDEA.
User: Admin
Date: 10/13/2019
Time: 11:46 AM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="customer.Customers" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>List Customers</title>
    <style>
        #tab,tr,td{
            border: 1px solid blue;
            margin: 0;
            padding: 0;
            text-align: center;
        }
    </style>
</head>
<body>
<%
    ArrayList<Customers> list = new ArrayList<>();
//      String date1, date2, date3, date4;
//    date1 = "26/8/1996";
//    date2 = "29/5/1997";
//    date3 = "15/06/1996";
//    date4 = "13/06/1996";
    Customers customers1 = new Customers("Emma", 10, "Hà Nội", "image1.jpg");
    Customers customers2 = new Customers("Zack", 20, "Hải Phòng", "image2.jpg");
    Customers customers3 = new Customers("Ben", 30, "Quảng Ninh", "image3.jpg");
    Customers customers4 = new Customers("Jack", 40, "Hồ Chí Minh", "image4.jpg");

    list.add(customers1);
    list.add(customers2);
    list.add(customers3);
    list.add(customers4);

    pageContext.setAttribute("list1", list);
%>
<table id="tab">
    <tr>
        <td>Name</td>
        <td>Birthday</td>
        <td>Address</td>
        <td>Images</td>
    </tr>
    <c:forEach var="customer" items="#{list1}">
        <tr>
            <td><c:out value="${customer.getName()}"></c:out></td>
            <td><c:out value="${customer.getAge()}"></c:out></td>
            <td><c:out value="${customer.getAddress()}"></c:out></td>
            <td><img width="150px" height="150px" src="images/<c:out value="${customer.getImage()}"/>"></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
