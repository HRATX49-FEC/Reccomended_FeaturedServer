const mysql = require('mysql');
const connection = mysql.createConnection({
  host: process.env.RDS_HOSTNAME || 'localhost',
  user: process.env.RDS_USERNAME || 'root',
  password: process.env.RDS_PASSWORD || 'hackreactor',
  port: process.env.RDS_PORT || 3306,
  database: process.env.RDS_DB_NAME || 'purrget',
})

connection.connect((err) => {
  if(err) {
    console.log('Error connecting to the database:', err);
  } else {
    console.log('Connected to the purrget database');
  }
})


connection.getCat = (catName) => {
  return new Promise ((resolve, reject) => {
    connection.query(`SELECT * FROM cats INNER JOIN images ON (cats.catName=(?) AND cats.id=images.cat_id) INNER JOIN categories ON (categories.id = cats.category_id)`, catName, (err, results) => {
      if (err) {
        reject(err);
      } else {
        resolve(results);
      }
    });
  });
}

connection.getCats = () => {
  return new Promise ((resolve, reject) => {
    connection.query(`SELECT * FROM cats INNER JOIN images ON (cats.id=images.cat_id) INNER JOIN categories ON (categories.id = cats.category_id)`,
    (err, results) => {
      if(err) {
        reject(err);
      } else {
        resolve(results);
      }
    })
  })
}


module.exports = connection;