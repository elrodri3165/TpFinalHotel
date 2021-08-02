function VerificarPersonas(){
    
    var cantidadpersonas = document.getElementById('cantidadpersonas').value;
    
    var habitacion = document.getElementById('habitacion');
    var i = habitacion.selectedIndex;
    
    var contenido = habitacion.options[i].label;
    
    var tipo =  contenido.substr(contenido.indexOf('Tipo:')+6, 6);
    
           
    if (tipo == 'Triple'){
        if (cantidadpersonas > 3){
        CrearDiv();
        }
    }
    else if (tipo == 'Doble'){
        if (cantidadpersonas > 2){
        CrearDiv();
        }
    }
    else if(tipo == 'Single'){
        if (cantidadpersonas > 1){
        CrearDiv();
        }
    }
}

function CrearDiv(){
    var divnuevo = document.createElement('div');
    divnuevo.className = 'alert alert-danger';
    divnuevo.id = 'divalert';
    divnuevo.role = 'alert';
    divnuevo.innerHTML = 'La cantidad de personas no esta disponible para esta habitacion!';
    
    var div = document.getElementById('div');
    div.appendChild(divnuevo);
}