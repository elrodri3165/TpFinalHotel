function validarLogin(){
    
var apellido = document.getElementById("apellido").value;
var nombre = document.getElementById("nombre").value;
var dni = document.getElementById("dni").value;
var password = document.getElementById("password").value;
    
var exp = /\w+@\w+\.+[a-z]/;



if (dni==="" || apellido ==="" || nombre==="" || email==="" || password===""  ){
    var myModal = new bootstrap.Modal(document.getElementById('myModal'));
    myModal.show();
    return false;
}
else if (dni.length > 10 || apellido.length > 50 || nombre.length > 50 || email.length > 50 || password.length > 10){
    var myModal = new bootstrap.Modal(document.getElementById('myModal'));
    myModal.show();
    return false;
}
    
}


//funcion de validar login de usuarios
function validarlogin(){

var user = document.getElementById("user").value;
var password = document.getElementById("password").value;
var signs= /["`']/gmi;
    
if (user ==="" || password==="" || user ===null || password===null ){
    var myModal = new bootstrap.Modal(document.getElementById('myModal'));
    myModal.show();
    return false;
}
else if (user.length>12 || user.length<2 || password.length>10 || password.length<2){
    var myModal = new bootstrap.Modal(document.getElementById('myModal'))
    myModal.show();
    return false;
    }
else if (signs.test(password)){
    var myModal = new bootstrap.Modal(document.getElementById('myModal'));
    myModal.show();
    return false;
}
}