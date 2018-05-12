Edukasyon.Views.Professors ||= {}

class Edukasyon.Views.Professors.EditView extends Backbone.View
  template: JST["backbone/templates/professors/edit"]

  events:
    "submit #edit-professor": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (professor) =>
        @model = professor
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
