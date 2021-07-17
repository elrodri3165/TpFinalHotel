function validarLogin(){
    
var user = document.getElementById("user").value;
var apellido = document.getElementById("apellido").value;
var nombre = document.getElementById("nombre").value;
var email = document.getElementById("email").value;
var password = document.getElementById("password").value;
    
var exp = /\w+@\w+\.+[a-z]/;

var espacio = /\s/;

if (user==="" || apellido ==="" || nombre==="" || email==="" || password===""  ){
    alert ("Debe completar todos los campos");
    return false;
}
else if (user.length > 10 || apellido.length > 50 || nombre.length > 50 || email.length > 50 || password.length > 10){
    alert ("Algun campo es muy largo");
    return false;
}
else if (!exp.test(email)){
    alert("El correo no es correcto");
    return false;
}
    
else if (espacio.test(user)){
    alert("El usuario no es correcto, no puede conener espacios en blanco");
    return false;
}

}


//funcion de validar login de usuarios
function validarlogin(){

var user = document.getElementById("user").value;
var password = document.getElementById("password").value;
var signs= /["`']/gmi;
    
if (user ==="" || password==="" || user ===null || password===null ){
    alert ("Debe completar todos los campos");
    return false;
}
else if (user.length>12 || user.length<2 || password.length>10 || password.length<2){
    alert ("Debe completar todos los campos correctamente");
    return false;
    }
else if (signs.test(password)){
    alert("Complete la clave con letras o numeros validos");
    return false;
}
}