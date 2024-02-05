const fs = require('fs');
try{
    fs.copyFileSync('info.txt', './dist/infoname.txt');
    console.log('File successfully copied!');
}catch(err){
    console.log(err);
}