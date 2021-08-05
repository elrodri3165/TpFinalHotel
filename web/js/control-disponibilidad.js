function ControlDisp(){
    SumarTotal();
    var desde, hasta, habitacion, div, idreserva;
    
    div = document.getElementById('div');
    
    idreserva = "idreserva=" + document.getElementById('idreserva').value + "&";
    desde = "desde=" + document.getElementById('desde').value + "&";
    hasta = "hasta=" + document.getElementById('hasta').value + "&";
    habitacion  = "habitacion=" + document.getElementById('habitacion').value;
    
    const http = new XMLHttpRequest();
    var ruta = 'SvControlDisp?';
    const url = ruta + idreserva + desde + hasta + habitacion;

    
    http.onreadystatechange = function(){
        
        if(this.readyState == 4 && this.status == 200){
            document.getElementById('div').innerHTML = this.responseText;
            VerificarPersonas();
           }
    }
    
    http.open ("GET", url);
    http.send();
}


