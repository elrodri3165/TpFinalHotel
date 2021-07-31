function BloquearBoton(){
    var botoningresar = document.getElementById('botoningresar');
    botoningresar.setAttribute("disabled", true);
    botoningresar.style.hover = "cursor: not-allowed";
    botoningresar.style.cursor ="not-allowed";
}