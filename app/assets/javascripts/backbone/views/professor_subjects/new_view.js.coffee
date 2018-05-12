Edukasyon.Views.ProfessorSubjects ||= {}

class Edukasyon.Views.ProfessorSubjects.NewView extends Backbone.View
  template: JST["backbone/templates/professor_subjects/new"]

  events:
    "submit #new-professor_subject": "save"
    "change #professor_id": "update_professor"
    "change #subject_id": "update_subject"

  initialize: (option) ->
    @subject_collection = option.subject_collection
    @professor_collection = option.professor_collection

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )
    @model.set('subject_id', @subject_collection.first().id)
    @model.set('professor_id', @professor_collection.first().id)

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (professor_subject) =>
        @model = professor_subject
        window.location.hash = "/#{@model.id}"

      error: (professor_subject, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    template_option = {
      model: @model,
      subjects: @subject_collection,
      professors: @professor_collection
    }
    @$el.html(@template(template_option))

    this.$("form").backboneLink(@model)

    return this

  update_professor: (e) ->
    @model.set('professor_id', parseInt($(e.currentTarget).val()))

  update_subject: (e) ->
    @model.set('subject_id', parseInt($(e.currentTarget).val()))