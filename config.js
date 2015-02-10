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
      debug: false
    },
    mail: {
      transport: 'SMTP',
      host: 'smtp.mandrillapp.com',
      options: {
        service: 'Mandrill',
        auth: {
          user: process.env.MANDRILL_USERNAME,
          pass: process.env.MANDRILL_APIKEY
        }
      }
    },
    server: {
      host: '0.0.0.0',
      port: process.env.PORT || 2368
    },
    fileStore: 'ghost-s3-file-store',
    aws: {
      accessKeyId: process.env.AWS_ACCESS_KEY_ID,
      secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
      bucket: process.env.AWS_BUCKET,
      region: process.env.AWS_REGION || 'us-east-1',
    }
    paths: {
        contentPath: path.join(__dirname, '/content/')
    }
  },

  development: {
    url: 'http://localhost:2368',
    database: {
      client: 'sqlite3',
      connection: {
        filename: path.join(__dirname, '/content/data/ghost-dev.db')
      },
      debug: false
    },
    server: {
      host: '0.0.0.0',
      port: process.env.PORT || 2368
    },
    paths: {
        contentPath: path.join(__dirname, '/content/')
    },
    fileStore: 'ghost-s3-file-store', //local-file-store
    aws: {
      accessKeyId: process.env.AWS_ACCESS_KEY_ID,
      secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
      bucket: process.env.AWS_BUCKET || 'browntoilet-development',
      region: process.env.AWS_REGION || 'us-east-1',
      //assetHost: proccess.env.AWS_ASSET_HOST // Optional
    }
  }
};

// Export config
module.exports = config;
