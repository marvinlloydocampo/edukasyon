class Edukasyon.Routers.SubjectsRouter extends Backbone.Router
  initialize: (options) ->
    @subjects = new Edukasyon.Collections.SubjectsCollection()
    @subjects.reset options.subjects

  routes:
    "new"      : "newSubject"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newSubject: ->
    @view = new Edukasyon.Views.Subjects.NewView(collection: @subjects)
    $("#subjects").html(@view.render().el)

  index: ->
    @view = new Edukasyon.Views.Subjects.IndexView(collection: @subjects)
    $("#subjects").html(@view.render().el)

  show: (id) ->
    subject = @subjects.get(id)

    @view = new Edukasyon.Views.Subjects.ShowView(model: subject)
    $("#subjects").html(@view.render().el)

  edit: (id) ->
    subject = @subjects.get(id)

    @view = new Edukasyon.Views.Subjects.EditView(model: subject)
    $("#subjects").html(@view.render().el)
