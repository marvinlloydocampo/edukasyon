Edukasyon.Views.Professors ||= {}

class Edukasyon.Views.Professors.NewView extends Backbone.View
  template: JST["backbone/templates/professors/new"]

  events:
    "submit #new-professor": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (professor) =>
        @model = professor
        window.location.hash = "/#{@model.id}"

      error: (professor, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
