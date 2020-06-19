<%--
  Created by IntelliJ IDEA.
  User: burhancabiroglu
  Date: 9.04.2020
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="style.css">

  <title>SIGN UP PAGE</title>
</head>
<body>
<form action="signServlet" style="border:1px solid #ccc" method="post">
  <div class="container">
    <%--@declare id="fullname"--%><%--@declare id="email"--%><%--@declare id="adress"--%><%--@declare id="customertype"--%><h1>My Form Page</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    <label for="fullname"><b>Full Name</b></label>
    <input type="text" placeholder="Enter Name" name="fullname" >


    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" >

    <label for="Adress"><b>Adress</b></label>
    <input type="text" placeholder="Enter Adress" name="adress" >

    <!-- <label for="psw-repeat"><b>Customer Type</b></label>
    <input type="password"  placeholder="Repeat Password" name="psw-repeat" required> -->

    <label for="customerType"><b>Customer Type</b></label>
    <br><br>
    <input type="radio" id="individual" name="customerType" value="individual" >
    <label for="individual">Individual(Bireysel) Customer</label> &nbsp; &nbsp;
    <input type="radio" id="corporate" name="customerType" value="corporate" >
    <label for="corporate">Corporate(Kurumsal) Customer</label><br>
    <br>
      <% String message=(String) request.getAttribute("errorMessage");

      if(message!=null){
        out.print("<p style=\"color:red\" style=\"size:10px\" >"+message+"!!!"+"</p>");
      }
      else{
        out.print("<br>");
      }


      %>



    <div class="clearfix">


      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>
</body>
</html>