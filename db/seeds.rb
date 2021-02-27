# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([{ name: 'Евгений' }, { name: 'Александр' }, { name: 'Виктор' }, { name: 'Роман' }])
categories = Category.create!([
                                { title: 'История' }, { title: 'Физика' }, { title: 'География' }, { title: 'Математика' }
                              ])
tests = Test.create!([
                       { title: 'Греция',         level: '1', category_id: categories[0].id, author_id: users[0].id, respondent_id: users[0].id },
                       { title: 'Франция',        level: '1', category_id: categories[0].id, author_id: users[0].id, respondent_id: users[1].id },
                       { title: 'Россия',         level: '1', category_id: categories[0].id, author_id: users[0].id, respondent_id: users[2].id },
                       { title: 'Англия',         level: '1', category_id: categories[0].id, author_id: users[0].id, respondent_id: users[3].id },
                       { title: 'Газы',           level: '2', category_id: categories[1].id, author_id: users[1].id, respondent_id: users[1].id },
                       { title: 'Трение',         level: '2', category_id: categories[1].id, author_id: users[1].id, respondent_id: users[2].id },
                       { title: 'Электричество',  level: '2', category_id: categories[1].id, author_id: users[1].id, respondent_id: users[3].id },
                       { title: 'Давление',       level: '2', category_id: categories[1].id, author_id: users[1].id, respondent_id: users[1].id },
                       { title: 'Континенты',     level: '3', category_id: categories[2].id, author_id: users[2].id, respondent_id: users[2].id },
                       { title: 'Горы',           level: '3', category_id: categories[2].id, author_id: users[2].id, respondent_id: users[3].id },
                       { title: 'Океаны',         level: '3', category_id: categories[2].id, author_id: users[2].id, respondent_id: users[1].id },
                       { title: 'Пустыни',        level: '3', category_id: categories[2].id, author_id: users[2].id, respondent_id: users[2].id },
                       { title: 'Функции',        level: '4', category_id: categories[3].id, author_id: users[3].id, respondent_id: users[3].id },
                       { title: 'Переменные',     level: '4', category_id: categories[3].id, author_id: users[3].id, respondent_id: users[1].id },
                       { title: 'Операции',       level: '4', category_id: categories[3].id, author_id: users[3].id, respondent_id: users[2].id },
                       { title: 'Анализ',         level: '4', category_id: categories[3].id, author_id: users[3].id, respondent_id: users[3].id }
                     ])

questions = Question.create!([
                               { body: 'Что...?', test_id: tests[0].id }, { body: 'Почему...?', test_id: tests[0].id },
                               { body: 'Что...?', test_id: tests[1].id }, { body: 'Почему...?', test_id: tests[1].id },
                               { body: 'Что...?', test_id: tests[2].id }, { body: 'Почему...?', test_id: tests[2].id },
                               { body: 'Что...?', test_id: tests[3].id }, { body: 'Почему...?', test_id: tests[3].id },
                               { body: 'Что...?', test_id: tests[4].id }, { body: 'Почему...?', test_id: tests[4].id },
                               { body: 'Что...?', test_id: tests[5].id }, { body: 'Почему...?', test_id: tests[5].id },
                               { body: 'Что...?', test_id: tests[6].id }, { body: 'Почему...?', test_id: tests[6].id },
                               { body: 'Что...?', test_id: tests[7].id }, { body: 'Почему...?', test_id: tests[7].id },
                               { body: 'Что...?', test_id: tests[8].id }, { body: 'Почему...?', test_id: tests[8].id },
                               { body: 'Что...?', test_id: tests[9].id }, { body: 'Почему...?', test_id: tests[9].id },
                               { body: 'Что...?', test_id: tests[10].id }, { body: 'Почему...?', test_id: tests[10].id },
                               { body: 'Что...?', test_id: tests[11].id }, { body: 'Почему...?', test_id: tests[11].id },
                               { body: 'Что...?', test_id: tests[12].id }, { body: 'Почему...?', test_id: tests[12].id },
                               { body: 'Что...?', test_id: tests[13].id }, { body: 'Почему...?', test_id: tests[13].id },
                               { body: 'Что...?', test_id: tests[14].id }, { body: 'Почему...?', test_id: tests[14].id },
                               { body: 'Что...?', test_id: tests[15].id }, { body: 'Почему...?', test_id: tests[15].id }
                             ])

Answer.create!([
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[0].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[1].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[2].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[3].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[4].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[5].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[6].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[7].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[8].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[9].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[10].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[11].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[12].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[13].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[14].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[15].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[16].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[17].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[18].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[19].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[20].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[21].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[22].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[23].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[24].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[25].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[26].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[27].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[28].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[29].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[30].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[31].id }
               ])
