Edukasyon.Views.Professors ||= {}

class Edukasyon.Views.Professors.ShowView extends Backbone.View
  template: JST["backbone/templates/professors/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
