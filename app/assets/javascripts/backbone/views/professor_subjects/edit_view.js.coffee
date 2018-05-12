Edukasyon.Views.ProfessorSubjects ||= {}

class Edukasyon.Views.ProfessorSubjects.EditView extends Backbone.View
  template: JST["backbone/templates/professor_subjects/edit"]

  events:
    "submit #edit-professor_subject": "update"
    "change #professor_id": "update_professor"
    "change #subject_id": "update_subject"

  initialize: (option) ->
    @option = option

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (professor_subject) =>
        @model = professor_subject
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@option))

    this.$("form").backboneLink(@model)

    return this

  update_professor: (e) ->
    @model.set('professor_id', parseInt($(e.currentTarget).val()))

  update_subject: (e) ->
    @model.set('subject_id', parseInt($(e.currentTarget).val()))