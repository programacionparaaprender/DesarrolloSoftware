const http = require('http');
const fs = require('fs');
const path = require('path');
const basPath = __dirname;

http.createServer((req, res)=>{
    console.log(req.url);
    switch(req.url){
        case '/':
            fs.createReadStream(path.join(basPath, './index.html')).pipe(res);
            break;
        case '/index':
            fs.createReadStream(path.join(basPath, './index.html')).pipe(res);
            break;
        case '/about':
            fs.createReadStream(path.join(basPath, './about.html')).pipe(res);
            break;
        case '/contect':
            fs.createReadStream(path.join(basPath, './contect.html')).pipe(res);
            break;
        default:
            fs.createReadStream(path.join(basPath, './404.html')).pipe(res);
            break;
    }
}).listen(3000);