const express = require('express');
const path = require('path');
const db = require('./db/querys.js');
const PORT = process.env.PORT || 5001;

const app = express();

app.use(express.json());
app.use(express.urlencoded( { extended: true } ));
app.use(express.static(path.join(__dirname, 'client', 'dist')));

//get a specific cat's data (req must have a catnName in the query for status 200)
app.get('/reccomended', (req, res) => {
  db
    .getCat(req.query.catName)
    .then(results => {
      //restructure the results to send back to the client
      let cat = results[0];
      cat.url = [cat.url]
      for(let i = 1; i < results.length; i++) {
        cat.url.push(results[i].url)
      }
      //send the restrucured results to the client
      res.status(200).send(cat);
    })
    .catch(err => {
      console.log(err);
      res.sendStatus(404);
    })
});

//get all cats from the database
app.get('/reccomended/all', (req, res) => {
  db
    .getCats()
    .then(results => {
      res.status(200).send(results);
    })
    .catch(err => {
      console.log(err);
      res.sendStatus(404);
    });
})

app.listen(PORT, () => {
  console.log(`Express is listening on port ${PORT}.`)
})