<%-- 
    Document   : index
    Created on : 2018-09-15, 14:28:01
    Author     : Grzegorz Filewicz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stacja pojazdów</title>
        <style>

            form {

                margin: 0 auto;
                width: 400px;              
                padding: 1em;
                border: 1px solid #CCC;
                border-radius: 1em;
            }
            label {

                display: inline-block;
                width: 90px;
                text-align: right;
            }
            .button {

                padding-left: 90px; 
            }

            button {

                margin-left: .5em;
            }
            form div + div {
                margin-top: 1em;
            }
            input {

                font: 1em sans-serif;
                border: 1px solid #999;
            }
            .info{
                width: 200px;
                margin-top: 20%;
                margin-left: 80%;
            }    
            .head{
                width: 400px;
                margin: 0 auto;
                text-align: center;

            }

        </style>
    </head>
    <body>
        <h1 class="head">Znajdź pojazd</h1> <br>

        <form action="Controller" method="post">
            <div>
                <label for="marka">Marka:</label>
                <input type="text" name="brand">
            </div>

            <div>
                <label for="od">Od:</label>
                <input type="text" name="yearFrom">
            </div>
            <div>
                <label for="do">Do:</label>
                <input type="text" name="yearTo">
            </div>
            <div>
                <label for="type">Nadwozie:</label>
                <select name="type">
                    <option>-</option>
                    <option>Sedan</option>
                    <option>Kombi</option>
                    <option>Hatchback</option>
                    <option>SUV</option>
                    <option>Minivan</option>
                </select> 
            </div>
            <div>
                <label for="fuel">Paliwo:</label>
                <select name="fuel">
                    <option>-</option>
                    <option>Diesel</option>
                    <option>Benzyna</option>
                    <option>Benzyna+LPG</option>
                </select> 
            </div>
            <div>
                Uszkodzony:<input type="checkbox" name="damage" value="Uszkodzony"> 
            </div>
            <div class="button">
                <input type="submit" value="Szukaj">
            </div>

        </form><br />
        <div class="info">
            <a href="info.jsp">Informacje o stronie</a>
        </div>

    </body>
</html>
