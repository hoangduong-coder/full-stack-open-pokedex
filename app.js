/* eslint-disable semi */
const express = require ('express');
const app = express ();

// Heroku dynamically sets a port
const PORT = process.env.PORT || 5000;

app.get ('/health', (req, res) => {
  res.send ('hello');
});

app.get ('/something', (req, res) => {
  res.send ('changed');
});

app.get ('/new', (req, res) => {
  res.send ('hello');
});

app.use (express.static ('dist'));

app.listen (PORT, () => {
  console.log ('server started on port 5000');
});
