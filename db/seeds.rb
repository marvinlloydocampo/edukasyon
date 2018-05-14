# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Initial Subjects
initial_subjects = ['Math 101', 'Math 102', 'Biology 110', 'Biology 111']

initial_subjects.each do |init_sub|
  Subject.create( { name: init_sub } )
end

# Create Initial Professors

Professor.create( { first_name: 'John', last_name: 'Doe' } )