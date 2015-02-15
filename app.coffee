ghost = require 'ghost'
path = require 'path'

if process.env.NODE_ENV is 'production'
  newrelic = require 'newrelic'

configFile = path.join __dirname, "config/#{process.env.NODE_ENV}.coffee"
ghost({
  config: configFile
}).then((ghostServer) ->
  ghostServer.start()
)
