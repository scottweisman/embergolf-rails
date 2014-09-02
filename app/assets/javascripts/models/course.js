// for more details see: http://emberjs.com/guides/models/defining-models/

App.Course = DS.Model.extend({
  name: DS.attr('string'),
  description: DS.attr('string')
});

App.Course.reopenClass({

  valid: function(fields) {
    return fields.name && fields.description
  }

});