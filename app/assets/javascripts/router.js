// For more information see: http://emberjs.com/guides/routing/

// Turn off # in url
EmbergolfRails.Router.reopen({
  location: 'history'
});


EmbergolfRails.Router.map(function() {
	this.route('about');
});

