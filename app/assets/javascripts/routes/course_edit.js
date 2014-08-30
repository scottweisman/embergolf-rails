App.CourseEditRoute = Ember.Route.extend({

  activate:   function() { this.controllerFor('course').set('isEditing', true) },
  deactivate: function() { this.controllerFor('course').set('isEditing', false) }

})