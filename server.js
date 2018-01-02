var port = 5000;

var express = require('express');
var bodyparser = require('body-parser');

var server = express();
server.use(bodyparser.urlencoded({extended: false}));
server.use(bodyparser.json());

var callback = function(error)
{
	console.log("app started at " + port);
}

var server_instance = server.listen(port, callback);
