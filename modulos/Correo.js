 //Requerimos el paquete
 const nodemailer = require('nodemailer');

 //Creamos el objeto de transporte
 
 function enviarCorreo(pass,correo) {
    
    const transporter = nodemailer.createTransport({
        service: 'gmail',
        auth: {
          user: 'audy.coto.g@gmail.com',
          pass: 'Audycoto'
        }
      });
      
      var mensaje = "Tu Clave de Verificacion es: " +pass;
      
      var mailOptions = {
        from: 'audy.coto.g@gmail.com',
        to: correo,
        subject: 'Verificacion',
        text: mensaje
      };

      transporter.sendMail(mailOptions, function(error, info){
        if (error) {
          console.log(error);
        } else {
          console.log('Email enviado: ' + info.response);
        }
      });
 }
 module.exports ={
     enviarCorreo: enviarCorreo
 }
 