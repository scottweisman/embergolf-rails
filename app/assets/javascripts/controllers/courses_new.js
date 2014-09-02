App.CoursesNewController = Ember.Controller.extend({

  actions: {
    createCourse: function() {
      var self = this;
      var fields = this.get('fields')

      if (App.Course.valid(fields)) {
	      var course = this.store.createRecord('course', fields);
	      course.save().then(function() {
	        self.transitionToRoute('course', course);
	      });
	    } else {
	    	this.set('showError', true)
	    }
    }
  }

});