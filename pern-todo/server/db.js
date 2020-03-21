const Pool = require('pg').Pool;
require('dotenv').config();

const {
  POST_USER,
  POST_PASSWORD,
  POST_HOST,
  POST_PORT,
  POST_DATABASE
} = process.env;

const pool = new Pool({
  user: POST_USER,
  password: POST_PASSWORD,
  host: POST_HOST,
  port: POST_PORT,
  database: POST_DATABASE
});

module.exports = pool;
