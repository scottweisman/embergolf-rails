// For more information see: http://emberjs.com/guides/routing/

// Turn off # in url
App.Router.reopen({
  location: 'auto',  // uses history or hash depending on browser support
	rootURL: '/'
});


App.Router.map(function() {
	this.resource('courses', { path: '/' }, function() {
		this.resource('course', { path: 'course/:id'});
	});
});

