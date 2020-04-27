jest.setTimeout(15000)

const startServer = require('../');

test('serverStartsAndStops', async () => {
  const mysqld = startServer();

  console.log(process.platform)

  await mysqld.ready
  console.log('mysql.ready')
  mysqld.stop();

  return new Promise(resolve => {
    mysqld.on('exit', function (code) {
      expect(code).toBe(0)
      resolve()
    });
  })
})
