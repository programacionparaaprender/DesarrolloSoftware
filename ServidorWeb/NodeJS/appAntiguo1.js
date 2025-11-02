console.log('Hello World!');

for(let i = 0; i < 8; i++){
    console.log('the value of I : %s', String(i));
}
const http = require('http');
http.createServer((req, res)=>{
    res.writeHead(200, {
        //'Content-Type':'text/plain'
        'Content-Type':'text/html'
    });
    res.write('<h1>Hello Node App!</h1>');
    res.end();
}).listen(3000);