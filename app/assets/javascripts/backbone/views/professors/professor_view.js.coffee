Edukasyon.Views.Professors ||= {}

class Edukasyon.Views.Professors.ProfessorView extends Backbone.View
  template: JST["backbone/templates/professors/professor"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
