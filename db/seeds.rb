# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
evgeniy = User.create(name: 'Евгений')
alexander = User.create(name: 'Александр')
viktor = User.create(name: 'Виктор')
roman = User.create(name: 'Роман')

history = Category.create(title: 'История')
physics = Category.create(title: 'Физика')
geography = Category.create(title: 'География')
math = Category.create(title: 'Математика')

tests_array = []
def self.create_tests(title, level, category, author, tests_array)
  tests_array << Test.create(title: title, level: level, category_id: category.id, author_id: author.id)
end

%w[Функции Переменные Операции Анализ].each do |title|
  create_tests(title, 4, math, evgeniy, tests_array)
end

%w[Газы Трения Электричество Давление].each do |title|
  create_tests(title, 2, physics, alexander, tests_array)
end

%w[Континенты Горы Океаны Пустыни].each do |title|
  create_tests(title, 3, geography, viktor, tests_array)
end

%w[Греция Франция Россия Англия].each do |title|
  create_tests(title, 1, history, roman, tests_array)
end

questions_array = []
%w[Что...? Где...? Когда...? Почему...? Сколько...?].each do |question|
  tests_array.each do |test|
    questions_array << Question.create(body: question, test_id: test.id)
  end
end

answers_array = []
questions_array.each do |question|
  answers_array << Answer.create(body: 'Ответ такой ...', correct: [true, false].sample, question_id: question.id)
end