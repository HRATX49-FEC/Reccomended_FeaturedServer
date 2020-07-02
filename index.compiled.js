"use strict";

var express = require('express');

var path = require('path');

var db = require('./db/querys.js');

var PORT = process.env.PORT || 5001;
var app = express();
app.use(express.json());
app.use(express.urlencoded({
  extended: true
}));
app.use(express["static"](path.join(__dirname, 'client', 'dist')));
app.get('/reccomended', function (req, res) {
  db.getCat(req.query.catName).then(function (results) {
    //restructure the results to send back to the client
    var cat = results[0];
    cat.url = [cat.url];

    for (var i = 1; i < results.length; i++) {
      cat.url.push(results[i].url);
    } //send the restrucured results to the client


    res.status(200).send(cat);
  })["catch"](function (err) {
    console.log(err);
    res.sendStatus(404);
  });
});
app.get('/reccomended/all', function (req, res) {
  db.getCats().then(function (results) {
    //restructure the results to send back to the client
    // let cat = results[0];
    // cat.url = [cat.url]
    // for(let i = 1; i < results.length; i++) {
    //   cat.url.push(results[i].url)
    // }
    //send the restrucured results to the client
    res.status(200).send(results);
  })["catch"](function (err) {
    console.log(err);
    res.sendStatus(404);
  });
});
app.listen(PORT, function () {
  console.log("Express is listening on port ".concat(PORT, "."));
});
