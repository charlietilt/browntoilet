path = require 'path'

config =
  url: 'http://localhost:2368'
  database:
    client: 'sqlite3'
    connection:
      filename: path.join __dirname, '../content/data/ghost-dev.db'
    debug: false
  server:
    host: '0.0.0.0'
    port: process.env.PORT or 2368
  paths:
    contentPath: path.join __dirname, '/content/'
  fileStore: 'ghost-s3-file-store'
  aws:
    accessKeyId: process.env.AWS_ACCESS_KEY_ID
    secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY
    bucket: process.env.AWS_BUCKET or 'browntoilet-development'
    region: process.env.AWS_REGION or 'us-east-1'

module.exports = config
