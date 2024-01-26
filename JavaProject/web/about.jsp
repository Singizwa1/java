<%-- 
    Document   : about
    Created on : Jan 24, 2024, 11:21:18 PM
    Author     : highe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HiDoctor/About Us</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <section id="header">
        <a href="#"><img src="images/logo_image1.png" class="logo" alt="logo"></a>

        <div>
            <ul id="navbar">
                <li><a href="index.html">Home</a></li>
                <li><a class="active" href="about.jsp">About</a></li>
                <!-- <li><a href="contact.html">Contact</a></li> -->
                <li><a href="Login.jsp">Sign In</a></li>
            </ul>
        </div>
    </section>

    <section id="page-header">
        <h2># About Us</h2>
        <p>Understand Us Better</p>
    </section>

    <section id="about-head" class="section-p1">
        <img src="images/home_comfort.png" alt="random-image">
        <div>
            <h2>Who Are We?</h2>
            <p>We are a team of programmers that decided to create a solution after analysing the tremendous spread of technology and also the various issues people face in the health care institutions</p>
            
        </div>
    </section>

    <section id="about-head" class="section-p1">
        <img src="images/Report_Checking.png" alt="random-image">
        <div>
            <h2>What Are We Solving?</h2>
            <p> After careful observation, we realized that most people faced problem of not being able to meet their doctor because they didn't have an appointment before showing up at the hospital. In some cases, people travel long distances back from their villages to get treatment from big hospitals where they always find themselves spending more than they can afford thus a waste of resources. And on the doctors side, we find most of them are treating a bigger number of people per day than they should, thus putting the patient at risk.</p>
            
        </div>
    </section>

    <section id="about-head" class="section-p1">
        <img src="images/Doctor_of_Your_Choice.png" alt="random-image">
        <div>
            <h2>Our Solution?</h2>
            <p>The solution tho the above problems is no other that <strong>HiDoctor</strong>. An app that helps make an appointment with your doctor at the hospital of your choice from the comfort of your home. This is to save time for the people who go to the hospital and go back home without being treated due to not having an appointment. And also it will give the hospital stuff a clear schedule of a given day and how many appointments they have to deal with through out the day.</p>
            
        </div>
    </section>

    <section id="about-head" class="section-p1">
        <img src="images/typing_phone.jpg" alt="random-image">
        <div>
            <h2>How It Works?</h2>
            <p>If you are new to <strong>HiDoctor</strong>, all you need is to create an account and then you will be able to fill the form and request an appointment to a certain hospital.
                If you alredy have an account you can always login your account and request an appointment at the hospital of your choice
            </p>
            
        </div>
    </section>

    <section id="contact-us">
        <div>
            <h2>Contact Us</h2>
            <form action="#">
            <label for="#">Email:</label><br>
            <input type="text" name="contact-email" id="input_field" placeholder="Enter your Email address here"><br>
            <label for="#">Feedback:</label><br>
            <textarea name="feedback" id="feedback" cols="30" rows="10"></textarea><br>
            <input type="sumbit" value="Send" id="button">
            </form>
        </div>
        
    </section>

    <footer><p>
        @ Copyright 2023-2024 
    </p></footer>

    <script src="script.js"></script>
</body>
</html>