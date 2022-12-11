const Pool = require('pg').Pool;
const pool = new Pool({
  user:"zoca",
  password:"sqlazul", //mudar a senha do banco para o banco local
  host:"localhost",
  port:5432,
  database:"connectcampus"

});
module.exports = pool;
