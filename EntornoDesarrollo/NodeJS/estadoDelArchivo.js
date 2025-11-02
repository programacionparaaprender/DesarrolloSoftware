const fs = require('fs');
fs.stat('info.txt', (err, fileState) => {
    if(err) throw err;
    console.log(fileState);
});