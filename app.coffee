ghost = require 'ghost'
path = require 'path'

configFile = path.join __dirname, "config/#{process.env.NODE_ENV}.coffee"
ghost({
  config: configFile
}).then((ghostServer) ->
  ghostServer.start()
)
