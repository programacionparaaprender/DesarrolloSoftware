const fs = require('fs');
fs.copyFile('info.txt', './dist/infoname.txt', err => {
    if(err) throw err;
    console.log('File successfully copied!');
});