<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HiDoctor/[Username]/Appointment Details</title>
    <link rel="stylesheet" href="style.css" >
    <link rel="stylesheet" href="Fontawesome/css/all.min.css">
   
       
    
</head>
<body>

    <section class="menu">
        <div class="logos">
            <img src="images/logo_image1.png" alt="logo">
        </div>
        
        <div class="profile">
            <i class="fa-regular fa-bell"></i>
            
            <a href="#">
                <img src="images/Doctor_of_Your_Choice.png" alt="Profile">
                <p>John Doe</p>
            </a>
        </div>
    </section>

    
             <center>
    
    
    <div id="msg" style="display: none; color: green;"><h3>Your First data sent well!</h3></div>

    <script>
        window.onload = function () {
            var msg = '<%= request.getParameter("msg") %>';
         
            if (msg === 'continue') {
                document.getElementById('msg').style.display = 'block';
                setTimeout(function() {
                    document.getElementById('msg').style.display = 'none';
                    window.history.replaceState({}, document.title, window.location.pathname);
                }, 2500); 
            }};
            </script>
</center>
    <section class="board">     <!-- contains the visible interface -->
        <div class="appointmentDetails">  <!-- contains the both divs and title -->
   
            <p id="pageTitle">Appointment Details</p>
            <div class="interface">   <!-- displays flex the two divs -->
                <form action="BookAppointementDetailsServlet" method="post">
                    
                    <div class="chooseHospital">
                        <!-- <label><input type="radio" name="chooseHospital"></label> -->
                        <label >Choose a hospital <em>*</em>:</label><br>
                            <select name="hospital" id="hospital">
                                <option value="aental">--Please select--</option>
                                <option value="Legacy">Legacy</option>
                                <option value="CHUK">CHUK</option>
                                <option value="CHUB">CHUB</option>
                            </select>
                    </div>
    
                    <div class="chooseDoctor">
                        <label><input type="radio" name="chooseDoctor" value="1">Recommend a doctor</label>
                        <label><input type="radio" name="chooseDoctor" value="2">I will choose my doctor</label>
    
                        <div class="Speciality">
                            <label >Specialities <em>*</em>:</label><br>
                            <select name="speciality" id="speciality">
                                <option value="aental">--Please select--</option>
                                <option value="Dental medicine">Dental medicine</option>
                                <option value="general medicine">general medicine</option>
                                <option value="cardiac medicine">cardiac medicine</option>
                            </select>
                        </div>
                        
                        <div class="DoctorName">
                            <label >Search the doctor's name or surname:</label><br>
                            <select name="doctorName" id="doctorName">
                                <option value="aental">--Please select--</option>
                                <option value="Dental medicine">Dental medicine</option>
                                <option value="general medicine">general medicine</option>
                                <option value="cardiac medicine">cardiac medicine</option>
                            </select>
                        </div>
    
                    </div>
                    <div class="chooseDate">
                        <label><input type="radio" name="chooseDate" value="1">Choose a preffered date</label>
                        <label><input type="radio" name="chooseDate" value="2">Earliest date Available</label>
    
                        <div class="prefferedDate">
                            <label >Preffered date and time option1 <em>*</em></label>
                            <br>
                            <input type="date" name="firstDate" id="firstDate">
                            <input type="time" name="firstTime" id="firstTime">
                            <br>
                            <label >Preffered date and time option2 <em>*</em></label>
                            <br>
                            <input type="date" name="secondDate" id="secondDate">
                            <input type="time" name="secondTime" id="secondTime">
                        </div>
                        
                    </div>
                    <div class="medicalConcern">
                        <label>Medical concern or request <em>*</em></label>
                        <br>
                        <textarea name="medicalConcern" id="medicalConcern" cols="50" rows="10"></textarea>
                    </div>
    
                   
                    <button id="appointmentDetailsButton">Next</button>
                </form>
    
                <div class="doctordetails">
                    <img  src="images/home_comfort.png" alt="doctordetails">
                    <p>DOCTOR'S NAME</p>
                    <h6>speciality</h6>
                    <label > ansdlalsklxaks</label>
                    <div class="doctorSchedule">
                        <table>
                            <tr>
                                <th>DAY</th>
                                <th>TIME</th>
                                <th>LOCATION</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>2</td>
                                <td>4</td>
                            </tr>

                            <tr>
                                <td>1</td>
                                <td>2</td>
                                <td>4</td>
                            </tr>
                            
                        </table>
                    </div>
                </div>
            </div>
            
        </div>
    </section>

   
</body>
</html>