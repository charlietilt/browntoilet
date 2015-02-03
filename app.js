var ghost = require('ghost');
var path = require('path');

if (process.env.NODE_ENV == 'production') {
  var newrelic = require('newrelic');
}
ghost({
  config: path.join(__dirname, 'config.js')
}).then(function (ghostServer) {
  ghostServer.start();
});
