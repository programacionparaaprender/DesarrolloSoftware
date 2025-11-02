try{
    const fs = require('fs');
    const data = fs.readFileSync('fileName.txt', 'utf8');
    console.log(data);
}catch(err){
    console.log(err);
}