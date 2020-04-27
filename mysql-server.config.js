/*
Default values are in place.
*/

module.exports = {
  /*
  `allowBlockedPort` will resolve mysqld.ready instead of rejecting when the port is found to be in use.
  */
  "allowBlockedPort": false,

  /*
  `mycnf` will be applied to the mysqld via my.cnf. See index.js for default values.
  */
  "mycnf": {},

  /*
  `port` is the port mysqld will run on. This value has higher priority over mycnf.port
  */
  "port": 3306,

  /*
  `reinitialize` will delete all databases and make a fresh mysql server.
  */
  "reinitialize": false,

  /*
  `verbose` will pipe stderr from mysqld to process.stdout.
  */
  "verbose": false,
}