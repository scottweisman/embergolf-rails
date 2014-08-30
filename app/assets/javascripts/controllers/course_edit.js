App.CourseEditController = Ember.ObjectController.extend({

  actions: {

    saveChanges: function() {
      var self = this;
      this.get('model').save().then(function() {
        self.transitionToRoute('course');
      })
    },

    cancel: function() {
      this.get('model').rollback();
      this.transitionToRoute('course');
    }

  }

})