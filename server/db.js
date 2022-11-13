const Pool = require('pg').Pool;
const pool = new Pool({
  user:"postgres",
  password:"***", //mudar a senha do banco para o banco local
  host:"localhost",
  port:5432,
  database:"connectcampus"

});
module.exports = pool;
