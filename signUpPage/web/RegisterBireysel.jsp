<%--
  Created by IntelliJ IDEA.
  User: burhancabiroglu
  Date: 10.04.2020
  Time: 00:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="style.css">

    <title>RegisterBireysel PAGE</title>
    <style>

        img{

            margin: 35%;
            margin-top: 20px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>

    <div class="container">



        <jsp:useBean id="musteriBean" type="webApp.MusteriBean" scope="session"/>

        <h1>Individual(Bireysel) Customer</h1>
        <hr>
        <!-- Burada siz benden registerUser metodu istediniz. Ancak bu olay session yapısına ters olur diye hem bildigimi
         göstermek icin hem de farklı bir metod kullanmak icin bean kullandım. Ayrıca istediginiz registerUser metodunu
         RegisterKurumsal.jsp sayfasında yaptım.-->

            <p style="size:10px">SAYIN <b><jsp:getProperty name="musteriBean" property="registerUser"/></b> BİLGİLERİNİZ KAYDEDİLDİ</p>

        <br>
        <br>

        <img src="img/check.png" alt="check" height="200px" width="180px">

        <hr>






        <div class="clearfix">



        </div>
    </div>

</body>
</html>



