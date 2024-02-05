const http = require('http');

const server = http.createServer((req, res)=>{
    console.log('Server Started');
    res.writeHead(200, {
        //'Content-Type':'text/plain'
        'Content-Type':'text/html'
    });
    res.end('<h1>Server Started</h1>');
});
server.listen(9000);