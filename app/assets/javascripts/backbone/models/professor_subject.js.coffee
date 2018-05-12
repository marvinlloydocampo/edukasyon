class Edukasyon.Models.ProfessorSubject extends Backbone.Model
  paramRoot: 'professor_subject'

  defaults:
    subject_id: null
    professor_id: null
    description: null

  subject_id: ->
    @get('subject_id')

  professor_id: ->
    @get('professor_id')

class Edukasyon.Collections.ProfessorSubjectsCollection extends Backbone.Collection
  model: Edukasyon.Models.ProfessorSubject
  url: '/professor_subjects'
