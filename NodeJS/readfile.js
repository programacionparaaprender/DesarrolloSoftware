const fs = require('fs');
fs.readFile('fileName.txt', '', (err, data)=>{
    if(err){
        throw err;
    }
    console.log(data.toString('utf8'));
});