const path = require('path')
let dirname = __dirname;
let filename = __filename;
console.log(filename);
console.log(dirname);
let filePath = 'C:\\Users\\Sayed Ahmad\\NodeJS\\rutasdirname.js';
filePath = 'C:/Users/Sayed Ahmad/NodeJS/rutasdirname.js';
console.log(path.basename(filename));
console.log(path.basename(filename, '.js'));
console.log(path.extname(filename));
console.log(path.basename(filename, path.extname(filename)));
let parsed = path.parse(filename);
console.log(parsed);
console.log(path.isAbsolute(filename));
let obj = {
    root: 'D:\\',
    dir: 'C:\\Users\\Sayed Ahmad',
    base: 'my-CV.pdf',
    name: 'my-CV',
    ext: 'pdf'
};
let format = path.format(obj);
console.log(format);
let myPath = path.join('fist', 'second/home/myh-post', 'other');
console.log(myPath);
let myPath2 = path.normalize('D://fist/second/home/myh-post//////other');
console.log(myPath2);
myPath2 = path.normalize('D://fist/second/home/myh-post/../../other');
console.log(myPath2);