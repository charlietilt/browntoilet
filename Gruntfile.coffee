grunt.registerTask 'run-grunt', ->
    done = @async()
    grunt.util.spawn
      grunt: true
      args: ['']
      opts:
        cwd: 'node_modules/ghost/'
    , (err, result, code) -> done()
