class Edukasyon.Routers.ProfessorSubjectsRouter extends Backbone.Router
  initialize: (options) ->
    @professor_subjects = new Edukasyon.Collections.ProfessorSubjectsCollection()
    @professors = new Edukasyon.Collections.ProfessorsCollection()
    @subjects = new Edukasyon.Collections.SubjectsCollection()
    @professor_subjects.reset options.professorSubjects
    @professors.reset options.professors
    @subjects.reset options.subjects
    @option_collection = {
      collection: @professor_subjects,
      subject_collection: @subjects,
      professor_collection: @professors
    }

  routes:
    "new"      : "newProfessorSubject"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newProfessorSubject: ->
    @view = new Edukasyon.Views.ProfessorSubjects.NewView(@option_collection)
    $("#professor_subjects").html(@view.render().el)

  index: ->
    @view = new Edukasyon.Views.ProfessorSubjects.IndexView(@option_collection)
    $("#professor_subjects").html(@view.render().el)

  show: (id) ->
    professor_subject = @professor_subjects.get(id)
    option_model = {
      model: professor_subject,
      subject_model: @subjects.get(professor_subject.subject_id()),
      professor_model: @professors.get(professor_subject.professor_id())
    }
    @view = new Edukasyon.Views.ProfessorSubjects.ShowView(option_model)
    $("#professor_subjects").html(@view.render().el)

  edit: (id) ->
    professor_subject = @professor_subjects.get(id)
    option = {
      model: professor_subject,
      subjects: @subjects,
      professors: @professors
    }
    @view = new Edukasyon.Views.ProfessorSubjects.EditView(option)
    $("#professor_subjects").html(@view.render().el)
