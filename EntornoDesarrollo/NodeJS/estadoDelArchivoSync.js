const fs = require('fs');
try{
    var file = fs.statSync('info.txt');
    console.log(file.isFile());
    console.log(file.isDirectory());
    console.log(file);
}catch(err){
    console.log(err);
}