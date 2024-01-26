<%-- 
    Document   : Login
    Created on : Jan 19, 2024, 2:33:41 PM
    Author     : highe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HiDoctor/Sign in</title>
    
      <link rel="stylesheet" href="style.css" > 
  
  
</head>
<body>
 <%
        String LoginResult = request.getParameter("LoginResult");

        if (LoginResult != null) {
            if (LoginResult.equals("success")) {
    %>
                <script>
                    setTimeout(function() {
                        alert("login successfully!");
                        document.getElementById("loginForm").reset(); 
                    }, 1000); 
                </script>
    <%
            } else if (LoginResult.equals("error")) {
    %>
                <div style="color: red;">please enter valid Crendentials</div>
    <%
            }
        }
    %>
    <section id="header">
        <a href="#"><img src="images/logo_image1.png" class="logo" alt="logo"></a>

        <div>
            <ul id="navbar">
                <li><a href="index.html">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <!-- <li><a href="contact.html">Contact</a></li> -->
                <li><a class="active" href="Login.jsp">Sign In</a></li>
            </ul>
        </div>
    </section>
    <div class="sign_in">
        <div id="forms">
            <p id="title">Sign In</p>
        <form action="LoginServlet" method="post" >
            Email:<br>
            <input type="email" id="input_field" name="email" placeholder="Enter your e-mail here"> 
            <br>
            Password:<br>
            <input type="password" id="input_field"  name="password" placeholder="Enter your password here"><br>
            <p>Forgot password?</p>
            <input type="submit" name="sign_in" id="signinBtn" value="Sign In" >
            <p><a href="SignUp.jsp">Create an account! </a></p>
        </form>
        </div>
        
    </div>
</body>
</html>