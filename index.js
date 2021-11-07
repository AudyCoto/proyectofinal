const express = require('express');
const path = require('path');
const app = express();

//configuracion
app.set('port',4000);
app.set('view engine','ejs');
app.set('paginas',path.join(__dirname,'paginas'));
app.use(express.static(path.join(__dirname , '/public')));

app.listen(app.get('port'),() =>{
    console.log('Server on port',app.get('port'));
});

//statics

//rutas
app.get('/', (req,res)=>{  
    res.render('ProyectoFinal');
    
});