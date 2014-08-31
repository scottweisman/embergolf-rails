App.CourseController = Ember.ObjectController.extend({

	showUnsavedMessage: function() {
	  return this.get('isDirty') && !this.get('isSaving')
	}.property('isDirty', 'isSaving'),

	isEditing: false,

  actions: {
    saveChanges: function() {
      this.get('model').save();
    },

    delete: function() {
      var self = this;
      this.get('model').destroyRecord().then(function() {
        self.transitionToRoute('courses');
      });
    }
  }

});