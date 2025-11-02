const fs = require('fs');
try{
    fs.renameSync('info.txt', 'document.txt');
    console.log('info.txt file renamed to document.txt');
    fs.renameSync('document.txt', './dist/info2.txt');
    console.log('document.txt file renamed to move dist/info.txt');
}catch(err){
    console.log(err);
}