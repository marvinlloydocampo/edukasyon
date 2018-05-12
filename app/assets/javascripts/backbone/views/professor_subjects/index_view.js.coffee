Edukasyon.Views.ProfessorSubjects ||= {}

class Edukasyon.Views.ProfessorSubjects.IndexView extends Backbone.View
  template: JST["backbone/templates/professor_subjects/index"]

  initialize: (option) ->
    @subject_collection = option.subject_collection
    @professor_collection = option.professor_collection
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (professorSubject) =>
    option_model = {
      model: professorSubject,
      subject_model: @subject_collection.get(professorSubject.subject_id()),
      professor_model: @professor_collection.get(professorSubject.professor_id())
    }
    view = new Edukasyon.Views.ProfessorSubjects.ProfessorSubjectView(option_model)
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(professorSubjects: @collection.toJSON() ))
    @addAll()

    return this
