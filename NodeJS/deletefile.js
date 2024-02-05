const fs = require('fs');
fs.unlink('fileName.txt', (err) =>{
    if(err) throw err;
    console.log('File successfully deleted!');
});