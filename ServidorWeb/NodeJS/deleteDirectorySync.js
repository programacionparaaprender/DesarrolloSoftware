const fs = require('fs');

try{
    //debe borrar el contenido de la carpeta primero
    fs.unlinkSync('./dist/info.txt');
    console.log('File successfully deleted!');
    fs.rmdirSync('dist');
    console.log('Directory successfully deleted!');
}catch(err){
    console.log(err);
}
