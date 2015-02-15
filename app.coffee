ghost = require 'ghost'
path = require 'path'
config = require './config'

if process.env.NODE_ENV is 'production'
  newrelic = require 'newrelic'

ghost({
  config: path.join __dirname, "config.coffee"
}).then((ghostServer) ->
  ghostServer.start()
)
