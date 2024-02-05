const fs = require('fs');
fs.rmdir('dist', err=>{
    if(err) throw err;
    console.log('Directory successfully');
});
