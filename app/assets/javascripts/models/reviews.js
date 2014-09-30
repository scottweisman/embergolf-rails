App.Review = DS.Model.extend({
  content: DS.attr('string'),
  course: DS.belongsTo('course')
});
