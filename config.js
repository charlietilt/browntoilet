// # Ghost Configuration
// Setup your Ghost install for various environments
// Documentation can be found at http://support.ghost.org/config/

var path = require('path'),
    config;

config = {
  production: {
    url: 'http://browntoilet.herokuapp.com',
    database: {
      client: 'pg',
      connection: {
        host: process.env.POSTGRES_HOST || 'localhost',
        user: process.env.POSTGRES_USER || 'postgres',
        password: process.env.POSTGRES_PASSWORD || 'postgres',
        database: process.env.POSTGRES_DATABASE || 'ghost',
        port: process.env.POSTGRES_PORT || 5432
      },
      debug: true
    },
    server: {
      host: '0.0.0.0',
      port: process.env.PORT || 2368
    },
    fileStorage: false,
    paths: {
        contentPath: path.join(__dirname, '/content/')
    }
  },

  development: {
    url: 'http://localhost:2368',
    // database: {
    //     client: 'sqlite3',
    //     connection: {
    //         filename: path.join(__dirname, '/content/data/ghost-dev.db')
    //     },
    //     debug: false
    // },
    // database: {
    //   client: 'pg',
    //   connection: {
    //     host: process.env.POSTGRES_HOST || 'localhost',
    //     user: process.env.POSTGRES_USER || 'postgres',
    //     password: process.env.POSTGRES_PASS || 'postgres',
    //     database: process.env.POSTGRES_DB || 'ghost',
    //     port: process.env.POSTGRES_PORT || 5432
    //   },
    //   debug: false
    // },
    server: {
      host: '0.0.0.0',
      port: process.env.PORT || 2368
    },
    paths: {
        contentPath: path.join(__dirname, '/content/')
    }
  }
};

// Export config
module.exports = config;
