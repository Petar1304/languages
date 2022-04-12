// SERVER
const http = require('http');

const server = http.createServer((req, res) => {
  let content = '';

  req.on('data', data => {
    content += data;
  });

  req.on('end', () => {
    res.write(content);
    res.end();
  });
});

server.listen(9090, '0.0.0.0');


//  CLIENT
const http = require('http');

const message = 'hello :)';

const options = {
  method: 'GET',
  host: '127.0.0.1',
  port: 9090,
  path: '/',
  headers: {
    'content-type': 'text/plain',
    'content-length': message.length
  }
};

const req = http.request(options, res => {
  let content = '';

  res.on('data', data => {
    content += data;
  });

  res.on('end', () => {
    console.log(content);
  });
});

req.write(message);
req.end();
