function ControlDisp(){
    var desde, hasta, habitacion, div;
    
    div = document.getElementById('div');
    
    desde = "desde=" + document.getElementById('desde').value + "&";
    hasta = "hasta=" + document.getElementById('hasta').value + "&";
    habitacion  = "habitacion=" + document.getElementById('habitacion').value;
    
    const http = new XMLHttpRequest();
    var ruta = 'SvControlDisp?';
    const url = ruta + desde + hasta + habitacion;

    
    http.onreadystatechange = function(){
        
        if(this.readyState == 4 && this.status == 200){
            document.getElementById('div').innerHTML = this.responseText;
           }
    }
    
    http.open ("GET", url);
    http.send();
}


