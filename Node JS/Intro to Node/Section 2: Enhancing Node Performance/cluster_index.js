// every child in the cluster only has 1 thread available, only to make our benchmarking more
process.env.UV_THREADPOOL_SIZE = 1;
const cluster = require('cluster');

// Is the file being executed in master mode?
if (cluster.isMaster) {
    // Cause index.js to be executed *again* but in child mode
    cluster.fork();
    cluster.fork();
    cluster.fork();
    cluster.fork();
    cluster.fork();
    cluster.fork();
} else {
    // I'm a child, I'm going to act like a server and do nothing else
    const express = require('express');
    const crypto = require('crypto');
    const app = express();

    // function doWork(duration) {
    //     const start = Date.now();
    //     while (Date.now() - start < duration) {}
    // }

    app.get('/', (req, res) => {
        // doWork(5000);       
        // res.send('Hi there');
        crypto.pbkdf2('a', 'b', 100000, 512, 'sha512', () => {
            res.send('Hi there');
        });   
    });

    app.get('/fast', (req, res) => {
        res.send('This was fast!');
    });

    app.listen(3000);
}