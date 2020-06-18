const mysql = require('mysql');
const connection = mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'hackreactor',
  database:'purrget'
})

connection.connect((err) => {
  if(err) {
    console.log('Error connecting to the database:', err);
  } else {
    console.log('Connected to the purrget database');
  }
})

//`SELECT cats.*, i.url, c.categoryName FROM cats, images i, categories c, cats_categories cc WHERE catName = '${catName}' AND cats.id=i.cat_id AND cats.id=cc.cat_id`
connection.getCat = (catName) => {
  return new Promise ((resolve, reject) => {
    connection.query(`SELECT * FROM cats INNER JOIN images ON (cats.catName='${catName}' AND cats.id=images.cat_id) INNER JOIN categories ON (categories.id = cats.category_id)`, (err, results) => {
      if (err) {
        reject(err);
      } else {
        resolve(results);
      }
    });
  });
}


module.exports = connection;