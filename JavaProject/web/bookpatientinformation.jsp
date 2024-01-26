<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HiDoctor/[Username]/Patient Information</title>
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

    <section class="board">     <!-- contains the visible interface -->
        <div class="appointmentDetails">  <!-- contains the both divs and title -->
            <p id="pageTitle">Patient Details</p>
            <div class="interface">   <!-- displays flex the two divs -->
                
                
                
            <form action="PatientInformationServlet" method="post" enctype="multipart/form-data">
   <input type="hidden" name="form-type" value="page1">
   <div class="containerinput">
       <div class="formdiv one">
                    <div class="patientInformation">
                        <!-- <label><input type="radio" name="chooseHospital"></label> -->
                            <label >First name <em>*</em></label><br>
                            <input type="text" name="firstname" id="firstname" placeholder="Enter your first name here"><br>

                            <label >Last name <em>*</em></label><br>
                            <input type="text" name="lastname" id="lastname" placeholder="Enter your last name here"><br>
                     <label>Gender<em>*</em></label><br>
                            <label >
                                <label><input type="radio" name="gender" value="Female">Female</label>
                                <label><input type="radio" name="gender" value="Male">Male</label>
                            </label>
                    </div>
                           
                           
                    <div class="patientInformation">
                            <label >Phone number <em>*</em></label><br>
                            <input type="tel" name="phonenumber" id="phonenumber" placeholder="0780000000"><br>

                            <label >Email <em>*</em></label><br>
                            <input type="email" name="emailaddress" id="emailaddress" placeholder="email123@gmail.com"><br>

                            <label >Date of birth<em>*</em></label><br>
                            <input type="date" name="birthDate" id="birthDate" ><br>
                            
                    </div>
            <div class="attachFile">
                        <label > Insurance (MMI, UAP, RSSB, -less than 5 MB in size)</label>
                        <br>
                        <input type="file" name="insurance" id="insurance"><br>
                    </div>

                    <div class="attachFile">                      
                        <label > Medical History (.jpg, .png, .pdf, -less than 5 MB in size)</label>
                        <br>
                        <input type="file" name="medicalFiles" id="medicalFiles">
                    </div>
</div>
       <div class="formdiv two">
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
            
       </div>
       </div>
                    <button id="appointmentDetailsButton" class="appointmentDetailsBack">Back</button>
                    <button id="appointmentDetailsButton" class="patientInformationNext" >Next</button>
                    
   
</form>

                
                
              
    
               
            </div>
            
        </div>
    </section>
</body>
</html>