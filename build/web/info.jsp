<%-- 
    Document   : info
    Created on : 2018-09-21, 17:15:26
    Author     : Grzegorz Filewicz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>O stronie</title>
        <style>
            .container{
                width: 1000px; text-align: justify;
            }
            .back{
                width: 200px;
                position: fixed;
                bottom: 5%;
                right: 0;
            }
            #author{
                  width: 200px;           
                position: fixed;
                bottom: 5%;
                left: 0;
            }
        </style>
    </head>
    <body>
        <h2>Opis strony oraz użyte technologie.</h2>
        <div class="container">
            <p> Niniejsza strona jest przykładem zastosowania frameworka Hibernate w aplikacjach webowych.</p>

            <p>Wykorzystane technologie :</p>
            <ul>  
                <li>Java Enterprise Edition </li>
                <li>Framework Hibernate</li>
                <li>Expression language, JSP Actions</li>

            </ul>

            <p> 
                Hibertnate to biblioteka która umożliwia stosowanie  odwzorowań relacyjno-obiektowych(ORM - Object Relational Mapping).
                Biblioteka ta pozwala na łączenie relacyjnych baz danych z językiem zorientowanym obiektowo. Hibernate operuje na  własnym
                języku zapytań(HQL - Hibernate Query Language), uniwerslanym i niezależnym od silnika bazy danych a jednocześnie zbliżonym do języka SQL.
            </p><br>
            <div id="author">
                <p>Autor: Grzegorz Filewicz</p>
                <p>Lublin, 20.08.2018r.</p>
            </div>



        </div> 
        <br>
        <div class="back">
            <a href="index.jsp">Strona główna</a>
        </div>
    </body>
</html>
