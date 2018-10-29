<%-- 
    Document   : result
    Created on : 2018-09-15, 15:02:48
    Author     : GRZEŚ
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="util.Cars"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stacja samochodów osobowych</title>
        <style> 
            .info{
                width: 200px;
                margin-top: 20%;
                margin-left: 80%;
            }
     
        </style>
    </head>
    <body>

        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Marka</th>
                    <th>Model</th>
                    <th>Rok</th>
                    <th>Nadwozie</th>
                    <th>Paliwo</th>
                    <th>Przebieg</th>
                    <th>Kolor</th>
                    <th>Skrzynia</th>
                    <th>Uszkodzony</th>
                    <th>Opis</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach var="car" items="${listOfCars}" varStatus="position">
                    <tr>
                        <td>${position.count}</td>
                        <td>${car.marka}</td>
                        <td>${car.model}</td>
                        <td>${car.rok}</td>
                        <td>${car.nadwozie}</td>
                        <td>${car.paliwo}</td>
                        <td>${car.przebieg}</td>
                        <td>${car.kolor}</td>
                        <td>${car.skrzynia}</td>
                        <td>${car.stan}</td>
                        <td>${car.opis}</td>
                    </tr>

                </c:forEach>


            <tbody>
        </table>

        <br />
        <div class="info">
            <a href="index.jsp">Powrót do Wyszukiwarki</a><br />
            <a href="info.jsp">Informacje o stronie</a>
        </div>
    </body>
</html>
