path = require 'path'

config =
  development:
    url: 'http://192.168.100.2:2368'
    database:
      client: 'sqlite3'
      connection:
        filename: path.join __dirname, '../content/data/ghost-dev.db'
      debug: false
    server:
      host: '0.0.0.0'
      port: process.env.PORT or 2368
    paths:
      contentPath: path.join __dirname, '../content/'
    mail:
      transport: 'SMTP'
      host: 'smtp.mandrillapp.com'
      options:
        service: 'Mandrill'
        auth:
          user: process.env.MANDRILL_USERNAME
          pass: process.env.MANDRILL_APIKEY
    storage:
      active: 'ghost-s3'
      'ghost-s3':
        accessKeyId: process.env.AWS_ACCESS_KEY_ID
        secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY
        bucket: process.env.AWS_BUCKET
        region: process.env.AWS_REGION or 'us-east-1'
module.exports = config
