var express = require('express');
var app = express();

var port = process.env.PORT || 8080;

app.use(express.static('static'));

app.listen(port, function () {
  console.log('Example app listening on port ' + port + '!');
});
