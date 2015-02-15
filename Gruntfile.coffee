module.exports = (grunt) ->
  grunt.registerTask 'heroku:production', ->
    done = @async()
    return done()
    grunt.util.spawn
      grunt: true
      args: ['init']
      opts:
        cwd: 'node_modules/ghost/'
    , (err, result, code) ->
      console.log result.stdout
      done()
