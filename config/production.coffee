path = require 'path'
config =
  production:
    url: 'http://browntoilet.herokuapp.com'
    database:
      client: 'pg'
      connection:
        host: process.env.POSTGRES_HOST or 'localhost'
        user: process.env.POSTGRES_USER or 'postgres'
        password: process.env.POSTGRES_PASSWORD or 'postgres'
        database: process.env.POSTGRES_DATABASE or 'ghost'
        port: process.env.POSTGRES_PORT or 5432
      debug: false
    mail:
      transport: 'SMTP'
      host: 'smtp.mandrillapp.com'
      options:
        service: 'Mandrill'
        auth:
          user: process.env.MANDRILL_USERNAME
          pass: process.env.MANDRILL_APIKEY
    server:
      host: '0.0.0.0',
      port: process.env.PORT || 2368

    fileStore: 'ghost-s3-file-store'
    aws:
      accessKeyId: process.env.AWS_ACCESS_KEY_ID
      secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY
      bucket: process.env.AWS_BUCKET
      region: process.env.AWS_REGION or 'us-east-1'

    paths:
      contentPath: path.join __dirname, '../content/'

module.exports = config
