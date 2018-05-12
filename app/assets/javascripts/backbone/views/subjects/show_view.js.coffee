Edukasyon.Views.Subjects ||= {}

class Edukasyon.Views.Subjects.ShowView extends Backbone.View
  template: JST["backbone/templates/subjects/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
