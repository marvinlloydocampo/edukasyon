Edukasyon.Views.ProfessorSubjects ||= {}

class Edukasyon.Views.ProfessorSubjects.ProfessorSubjectView extends Backbone.View
  template: JST["backbone/templates/professor_subjects/professor_subject"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  initialize: (option) ->
    @subject_model = option.subject_model
    @professor_model = option.professor_model

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    template_option = {
      model: @model,
      subject: @subject_model,
      professor: @professor_model
    }

    @$el.html(@template(template_option))
    return this
