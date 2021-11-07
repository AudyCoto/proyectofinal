
var mysql = require('mysql');
const User = require('./alumno');
var alumno;

var conexion = mysql.createConnection({
host: 'localhost',
database: 'proyecto_finaldw',
user: 'root',
password: ''
});



function abrir(){
    conexion.connect(function(error){
        if(error){
            throw error;
        }else{
            console.log('SOY EL EXITO');
        }
    
    });


}

function cerrar(){
    conexion.end(); 
}
function actualizar(dato){
        abrir();
        var sql = "UPDATE `tbalumnos` SET `NombreUsuarioAlumno`='"+dato+"' WHERE `IdAlumnos`='0905-16-6194'";
     
        conexion.query(sql, function (err, result) {
          if (err) throw err;
          console.log(result.affectedRows + " record(s) updated");
        });
        cerrar();
}
function obtenerAlumno(id){
  
     conexion.query("SELECT * FROM `tbalumnos` WHERE `NombreUsuarioAlumno`= '"+id+"'", function (err, result){
        if (err) {
            throw err;  
        }else{
            alumno=new User(result.IdAlumnos,result.Apellidos,result.Nombres,result.NombreUsuarioAlumno,result.UltimaConecxion,result.Estado,result.Catedra);
            console.log(result);
            //console.log(result.RowDataPacket.IdAlumnos);
            //console.log(alumno.getUserStats());
            //return result;
        }
      });


}
module.exports = {
    abrir: abrir,
    cerrar: cerrar,
    actualizar: actualizar,
    obtenerAlumno: obtenerAlumno

}

abrir();
obtenerAlumno("a");

cerrar();
//actualizar();