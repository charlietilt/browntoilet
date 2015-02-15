config =
  local: require './config/local'
  development: require './config/development'
  production: require './config/production'

module.exports = config
