// Module dependencies.
var application_root = __dirname,
	express = require('express'),
	path = require('path'),
	mongoose = require('mongoose'),
	app = express();

var DS = require('jps-ds').DS;

var _ds = new DS( {
	host: 'localhost/learning-yeoman',
	//host: 'test:test@ds037498.mongolab.com:37498/learning-yeoman',
	models: {
		'posts': {
			title: String,
			slug: String,
			body: String,
			image: String,
			published: Boolean,
			tags: Array,
			created: Date,
			modified: Date
		}
	}
} );

// Configure server
app.configure(function () {
	//parses request body and populates request.body
	app.use(express.bodyParser());
	//checks request.body for HTTP method overrides
	app.use(express.methodOverride());
	//perform route lookup based on URL and HTTP method
	app.use(app.router);
	//Where to serve static content
	app.use(express.static(path.join(application_root, 'app')));
	//Show all errors in development
	app.use(express.errorHandler({
		dumpExceptions: true,
		showStack: true
	}));
});



//Routes
// Routes
app.get('/api', function (request, response) {
	response.send('API is running');
});

//Get a list 
app.get('/api/posts', function (request, response) {
	_ds.findAll('posts').then(function(data){
		return response.send(data);
	});
});


//Insert a new
app.post('/api/posts', function (request, response) {
	_ds.create( 'posts', {
		title: request.body.title,
		body: request.body.body,
		published: request.body.published,
		created: new Date()
	} ).then( function (model) {
		return response.send(model);
		console.log( 'model created', model );
	} );

});

//Get a single by id
app.get('/api/posts/:id', function (request, response) {
	_ds.findOne('posts', request.params.id).then(function(data){
		return response.send(data);
	});
});

//Update 
app.put('/api/posts/:id', function (request, response) {
	console.log('Find ID#' + request.params.id, request.body);

	_ds.update( 'posts', request.params.id, {
		title: request.body.title,
		body: request.body.body,
		image: request.body.image,
		tags: request.body.tags,
		published: request.body.published
	} ).then( function (model) {
		return response.send(model);
		console.log( 'model updated', model );
	} );

});

//Delete 
app.delete('/api/posts/:id', function (request, response) {
	_ds.destroy( 'posts', request.params.id).then( function (data) {
		return response.send(data);
	} );
});
//Start server
var port = 9090;
app.listen(port, function () {
	console.log('Express server listening on port %d in %s mode', port, app.settings.env);
});
