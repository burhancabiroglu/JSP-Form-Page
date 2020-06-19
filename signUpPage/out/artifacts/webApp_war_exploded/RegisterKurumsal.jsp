<%@ page import="webApp.KurumsalMusteriBean" %>
<%@ page import="java.awt.*" %><%--
  Created by IntelliJ IDEA.
  User: burhancabiroglu
  Date: 10.04.2020
  Time: 00:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="style.css">

    <title>REGISTER KURUMSAL PAGE</title>

    <style>

        img{

            margin: 35%;
            margin-top: 20px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
<form action="RegisterKurumsal.jsp" style="border:1px solid #ccc" method="post">
    <div class="container">

        <h1>Corporate(Kurumsal) Customer</h1>
        <hr>
        <%--@declare id="kurumadi"--%><hr>
        <%
            KurumsalMusteriBean kbean=(KurumsalMusteriBean) session.getAttribute("kurumsalmusteriBean");

            String mys=kbean.registerUser();
            out.println("<p style=\"size:10px\">SAYIN <b>"+mys+"</b> BİLGİLERİNİZ KAYDEDİLDİ</p>");
        %>



        <%
            String btn=(String) request.getParameter("button");
            if(btn!=null){
                kbean.setKurumAdi(request.getParameter("kurumAdi"));
                out.println("<p style=\"size:10px\">Kurum Adı: <b>"+kbean.getKurumAdi()+"</b>  KAYDEDİLDİ</p>");
                out.println("<img src=\"img/check.png\" alt=\"check\" height=\"200px\" width=\"180px\">");
            }
            else{
                out.println("<label for=\"kurumAdi\"><b>Kurum Adı</b></label>\n" +
                        "        <input type=\"text\" placeholder=\"Kurumunuzun Adını Girin\" name=\"kurumAdi\" >\n");
            }
        %>




        <br>




        <div class="clearfix">
            <%
                btn=(String) request.getParameter("button");
                if(btn!=null){
                    kbean.setKurumAdi(request.getParameter("kurumAdi"));
                }
                else{
                    out.println("<button type=\"submit\" class=\"signupbtn\" name=\"button\">Save</button>");
                }


            %>



        </div>
    </div>
</form>
</body>
</html>