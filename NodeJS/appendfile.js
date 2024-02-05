const fs = require('fs');
fs.appendFile('fileName.txt', '\nNew Data From AppendFile Method', (err)=>{
    if(err){
        throw err;
    }
    console.log('Data successfully added');
    try{
        const fs = require('fs');
        const data = fs.readFileSync('fileName.txt', 'utf8');
        console.log(data);
    }catch(err){
        console.log(err);
    }
});
