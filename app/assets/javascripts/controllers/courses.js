App.CoursesController = Ember.ArrayController.extend({

  sortProperties: ['name'],

  courses: function() {
    return this.get('search') ? this.get('searchedCourses') : this
  }.property('search', 'searchedCourses'),

  searchedCourses: function() {
    var search = this.get('search').toLowerCase()
    return this.filter(function(course) {
      return course.get('name').toLowerCase().indexOf(search) != -1
    })
  }.property('search', 'this.@each.name')
})