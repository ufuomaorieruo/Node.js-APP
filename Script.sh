#!/bin/bash

echo "Updating system..."
sudo apt update -y

echo "Installing Node.js and npm..."
sudo apt install nodejs npm -y

echo "Creating application folder..."
mkdir -p ~/nodeapp

cd ~/nodeapp

echo "Creating Node.js application..."

cat << EOF > app.js
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
EOF

echo "Setup complete!"
echo ""
echo "To start the application:"
echo "cd ~/nodeapp"
echo "node app.js"