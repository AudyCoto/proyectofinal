
const documento = require('fs');
const path = './archivo/documento.csv';

function crearDocumento(persona){

    try {
        if (documento.existsSync(path)) {
          documento.unlinkSync(path);
          CDoc(persona);
          }
          else{
             CDoc(persona);
          }
        } catch(err) {
        console.error(err)
        }
}




function CDoc(dato){

    documento.appendFile('documento.csv',dato,(error)=>{
        if(error){
            throw error;
        }
        console.log('creado');
    });
}
module.exports = {
    crearDocumento: crearDocumento
}


