const express = require('express');
const app = express();
const port = 3000;
app.get('/', (req, res)=>{
    res.writeHead(200, {
        //'Content-Type':'text/plain'
        'Content-Type':'text/html'
    });
    res.write('<h1>Hello Node Express App 1!</h1>');
    res.end();
});
app.listen(port, ()=>{
    console.log('Server listening on http://localhost:' + port);
});