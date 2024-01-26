<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HiDoctor/Sign up</title>
    <link rel="stylesheet" href="style.css" >
</head>
<body>

    <section id="header">
        <a href="#"><img src="images/logo_image1.png" class="logo" alt="logo"></a>

        <div>
            <ul id="navbar">
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a class="active" href="Login.jsp">Sign In</a></li>
            </ul>
        </div>
    </section>
    <div class="sign_in">
        <div id="forms">
            <p id="title">Sign Up</p>
            <form action="SignUpServlet" method="post">
                User Name:<br>
                <input type="text" id="input_field" name="UserName" placeholder="Enter your user name here"> 
                <br>
                Email:<br>
                <input type="email" id="input_field" name="Email" placeholder="Enter your e-mail here"> 
                <br>
                Password:<br>
                <input type="password" id="input_field"  name="Password" placeholder="Enter your password here"><br>
                
                <input type="submit" name="submit" id="signinBtn" value="Sign Up">
                <p><a href="Login.jsp">Already have an account? Sign in! </a></p>
            </form>
        </div>
    </div>
    
</body>
</html>
