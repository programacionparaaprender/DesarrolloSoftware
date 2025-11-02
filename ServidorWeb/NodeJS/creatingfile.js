const fs = require('fs');
/*
fs.writeFile('info.txt', 'Some text for testing!', (err)=>{
    if(err){
        throw err;
    }
    console.log('File successfully created!');
});
*/
try{
    fs.writeFileSync('fileName.txt', 'Some text for testing!');
    console.log('File successfully created!');
}catch(err){
    throw err;
}