function validateForm(){
    let email = document.getElementById("email").value.trim();
    let password = document.getElementById("password").value.trim();

    if(email === "" || password === ""){
        alert("The field must be inserted");
        return false;
    }
    return true;
}