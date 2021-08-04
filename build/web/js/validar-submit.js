function validarSubmit(){
      
    if (!!document.getElementById('divalert')){
        var myModal = new bootstrap.Modal(document.getElementById('myModal'));
        myModal.show();
        return false;
    }else{
        return true;
    }  
}