const pool = require('./coneccion');


function Login() {
 
    async function dato() {
         var usuario = document.getElementById("user").value;
    var password = document.getElementById("pass").value;
    var maestro = await pool.query("SELECT Nombres,  Password FROM tbmaestros WHERE Nombres='"+usuario+"' and  Password ='"+password+ "'"); 
    console.log(maestro[0]);

    console.log(usuario);
    }
   
}
