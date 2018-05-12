Edukasyon.Views.Subjects ||= {}

class Edukasyon.Views.Subjects.SubjectView extends Backbone.View
  template: JST["backbone/templates/subjects/subject"]

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
