// Patient information variables
let button = document.querySelector(".patientInformationNext");
let firstname = document.getElementById("firstname");
let lastname = document.getElementById("lastname");
let phone = document.getElementById("phonenumber");
let emailaddress = document.getElementById("emailaddress");
let birthDate = document.getElementById("birthDate");
let insurance = document.getElementById("insurance");
let medicalFiles = document.getElementById("medicalFiles");
let form = document.forms[0];


form.onsubmit = (e)=>{
    e.preventDefault();
    // console.log('hello world');
    // alert('hello world');
   
    sendData();
    
};

function sendData() {
    // e.preventDefault();
    let formType = form.elements['form-type'].value;
    console.log(formType);
    if (formType === 'page1') {
         bookingConfirmation();
    } else {
        // alert('hello world1')
        processPage2();
    }
    // bookingConfirmation();
}

function bookingConfirmation() {
    let gender = document.querySelector('input[name="gender"]:checked');
    localStorage.setItem("Firstname", firstname.value);
    localStorage.setItem("Lastname", lastname.value);

    if (gender) {
        localStorage.setItem("Gender", gender.value);
    } else {
        // Handle the case when no gender is selected
        console.error("No gender selected");
    }

    localStorage.setItem("phone", phone.value);
    localStorage.setItem("email", emailaddress.value);
    localStorage.setItem("born_on", birthDate.value);
    localStorage.setItem("insurance", insurance.value);
    localStorage.setItem("medicalFiles", medicalFiles.value);

    // window.location.replace = "bookpatientconfirmation.html";
    window.location.replace("bookappointementdetails.jsp");
    // alert('hello wolrd');
}

function processPage2(){
    let hospital = form.elements['hospital'].value;
    let chooseDoctor = form.elements['chooseDoctor'].value;
    let speciality = form.elements['speciality'].value;
    let doctorName = form.elements['doctorName'].value;
    let chooseDate = form.elements['chooseDate'].value;
    let firstDate = form.elements['firstDate'].value;
    let secondTime = form.elements['secondTime'].value;
    let medicalConcern = form.elements['medicalConcern'].value;

    localStorage.setItem("hospital", hospital);
    localStorage.setItem("chooseDoctor", chooseDoctor);
    localStorage.setItem("speciality", speciality);
    localStorage.setItem("chooseDate", chooseDate);
    localStorage.setItem("firstDate", firstDate);
    localStorage.setItem("secondTime", secondTime);
    localStorage.setItem("medicalConcern", medicalConcern);

    window.location.replace("bookingconfirmation.jsp");



}
