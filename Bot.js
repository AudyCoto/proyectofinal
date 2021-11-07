const pool = require('./modulos/coneccion');
const gen = require('./modulos/GenClave');
const {enviarCorreo} = require('./modulos/Correo');
const {Telegraf} = require('telegraf');
//const {abrir,cerrar,actualizar,obtenerAlumno}= require('./conexion');
const documento = require('fs');
const {crearDocumento} = require('./modulos/CrearDocumentos');
const { verify } = require('crypto');



const bot = new Telegraf('2068393851:AAGU8lp9dZvFmwFD4nRadOAKG3cGBXZIC7M');


bot.start((ctx)=>{
    ctx.reply('Bienvenido');
    ctx.reply('Para Verificar tu usuario escribe: Verificar');

    
})
bot.hears('conexion', ctx=>{
    ctx.reply('Bienvenido');
    ctx.reply(`Welcome ${ctx.from.first_name} ${ctx.from.last_name}`)
})

bot.hears(['Documento','DOCUMENTO','documento'], ctx=>{
    ctx.telegram.sendChatAction(ctx.chat.id, 'upload_document');
    ctx.telegram.sendDocument(ctx.chat.id,{source: "./archivo/documento.csv"});
})
bot.hears(['Ultimo','ULTIMO','ultimo'], ctx=>{
   
    pool.query("UPDATE `tbalumnos` SET `Ultima_Conecxion`=current_timestamp() WHERE `NombreUsuarioAlumno`='"+ctx.chat.id+"'");
    ctx.reply("Tu ultima conexion a sido actualizada");
})



 bot.hears('b', ctx=>{
    //ctx.reply(ctx.chat.id);
    console.log(ctx.chat.text);
    console.log(ctx.message.text);
 })







  bot.on('text', (ctx) => {
    var frase=ctx.message.text.split(" ");
    const user =  pool.query("SELECT * FROM tbalumnos where NombreUsuarioAlumno= '"+ctx.chat.id+"'");
    console.log(user[0]);
    //opcion verificar
    if(frase[0].toLowerCase()=="verificar")
            {
                ctx.reply("Gracias por usar este bot, ahora envia"
                +"la palabra correo seguido de tu correo"
                +"para poder verificarte como ejemplo: Correo egarciac29@miumg.edu.gt");
            }else if(frase[0].toLowerCase()=="correo")
            {   
                if(frase[1])
                { 
                    async function email() {
                    const datos= await pool.query("SELECT * FROM tbalumnos where Correo= '"+frase[1]+"'");  
                    if(datos!="")
                    {
                        if(!datos[0].clave){
                            console.log(gen.num);
                            enviarCorreo(gen.num,datos[0].Correo);
                            ctx.reply("El codigo se ha enviado a tu correo,"+
                            "ingresa la palabra validar seguido de tu codigo"+
                            "EJEMPLO: validar 11111");
                            pool.query("UPDATE tbalumnos SET clave='"+gen.num+"' WHERE Correo='"+datos[0].Correo+"'");                    
                        }else{
                            ctx.reply("La Clave ha sido enviada previamente");
                        }
                    }else{
                        ctx.reply("El Correo ingresado no existe")
                    }
                }
            email();
        }
    }else if(frase[0].toLowerCase()=="validar"){
        async function validar(){
            if(frase[1])
            {
                const datos= await pool.query("SELECT * FROM tbalumnos where clave= '"+frase[1]+"'");
                if(datos!="")
                {   if(datos[0].NombreUsuarioAlumno){
                    ctx.reply("El usuario a sido validado con anterioridad");
                    }else{
                        pool.query("UPDATE tbalumnos SET NombreUsuarioAlumno='"+ctx.chat.id+"' WHERE clave='"+datos[0].clave+"'");
                        ctx.reply("validado exitosamente");
                    }
                    
                }else{
                    ctx.reply("el codigo ingresado es erroneo");
                }
            
            
            
            }else{
                ctx.reply("No has ingresado el codigo");
            }
        
        }
      validar();
    }
    if(frase[0].toLowerCase()=="carne:")
            {
              async function datos() {
                  const id=frase[1];
                  const datos= await pool.query("SELECT * FROM tbalumnos where IdAlumnos= '"+id+"'");
                  console.log(datos[0].Ultima_Conecxion);
                  crearDocumento(
                      datos[0].IdAlumnos+";"+
                      datos[0].Apellidos+";"+
                      datos[0].Nombres+";"+
                      datos[0].NombreUsuarioAlumno+";"+
                      datos[0].Correo+";"+
                      datos[0].Ultima_Conecxion+";"+
                      datos[0].Estado+";"+
                      datos[0].Catedra+";"      
                      );
              }
              datos();
 
            } 
})


bot.launch();