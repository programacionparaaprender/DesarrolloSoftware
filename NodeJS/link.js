const fs = require('fs');
fs.unlink('fileName.txt', err => {
    if(err) throw err;
    console.log('File successfully deleted');
});

try{
    fs.unlinkSync('info.txt');
    console.log('File successfull');
}catch(err){

}