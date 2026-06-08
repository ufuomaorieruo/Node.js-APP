const http = require('http');

const hostname = '0.0.0.0';
const port = 3000;

const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/html');

    res.end(
        '<h1>Hello from Node.js on Linux VM!</h1><p>Node.js deployment successful.</p>'
    );
});

server.listen(port, hostname, () => {
    console.log('Server running on port 3000');
});