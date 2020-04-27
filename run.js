#! /usr/bin/env node
const startServer = require('./index')

const mysqld = startServer()

process.on('SIGINT', () => {
  mysqld.stop()
  mysqld.on('exit', function (code) {
    process.exit(code)
  });
})