class Edukasyon.Routers.ProfessorsRouter extends Backbone.Router
  initialize: (options) ->
    @professors = new Edukasyon.Collections.ProfessorsCollection()
    @professors.reset options.professors

  routes:
    "new"      : "newProfessor"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newProfessor: ->
    @view = new Edukasyon.Views.Professors.NewView(collection: @professors)
    $("#professors").html(@view.render().el)

  index: ->
    @view = new Edukasyon.Views.Professors.IndexView(collection: @professors)
    $("#professors").html(@view.render().el)

  show: (id) ->
    professor = @professors.get(id)

    @view = new Edukasyon.Views.Professors.ShowView(model: professor)
    $("#professors").html(@view.render().el)

  edit: (id) ->
    professor = @professors.get(id)

    @view = new Edukasyon.Views.Professors.EditView(model: professor)
    $("#professors").html(@view.render().el)
