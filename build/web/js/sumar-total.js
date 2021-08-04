function SumarTotal(){
    
    var desde = document.getElementById('desde').value;
    var hasta = document.getElementById('hasta').value;
    var totalinput = document.getElementById('valortotal');
    
    desde = new Date(desde);
    hasta = new Date(hasta);
    
    var dias = hasta - desde;
    
    var habitacion = document.getElementById('habitacion');
    var i = habitacion.selectedIndex;
    
    var contenido = habitacion.options[i].label;
    
    var precio =  contenido.substr(contenido.indexOf('$')+2);
    
    var total = (precio * dias) /86400000;
    
    totalinput.value = total;
}