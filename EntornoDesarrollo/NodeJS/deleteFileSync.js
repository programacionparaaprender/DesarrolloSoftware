const fs = require('fs');
try{
    fs.unlinkSync('fileName.txt');
    console.log('File successfully deleted!');
}catch(err){
    console.log(err);
}

