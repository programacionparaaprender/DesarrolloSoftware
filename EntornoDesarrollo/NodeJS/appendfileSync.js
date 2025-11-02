const fs = require('fs');

try{
    const fs = require('fs');
    fs.appendFileSync('fileName.txt', '\nAdd New Data');
    console.log('Data successfully added');
    const data = fs.readFileSync('fileName.txt', 'utf8');
    console.log(data);
}catch(err){
    console.log(err);
}
