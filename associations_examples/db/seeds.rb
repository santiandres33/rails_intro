# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
Chapter.destroy_all
Sentence.destroy_all


book = Book.create(name: 'Rubyst')

10.times do |i|
  book.chapters.create(name: i + 1)
  book.chapters[i].sentences.create(word_count: rand(100))
end


