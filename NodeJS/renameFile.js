const fs = require('fs');
/*
fs.rename('info.txt', 'document.txt', err => {
    if(err) throw err;
    console.log('info.txt file renamed to document.txt');
});
*/
fs.rename('document.txt', './dist/info2.txt', err => {
    if(err) throw err;
    console.log('document.txt file renamed to move dist/info.txt');
});
