const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end(`
    <h1>🚀 Airtel DevOps POC</h1>
    <p>Application deployed successfully on Kubernetes</p>
  `);
});

server.listen(3000, () => {
  console.log("Server running on port 3000");
});
