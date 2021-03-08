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
                       { title: 'Греция', level: '1', category_id: categories[0].id, author_id: users[0].id },
                       { title: 'Франция',        level: '1', category_id: categories[0].id, author_id: users[0].id },
                       { title: 'Россия',         level: '1', category_id: categories[0].id, author_id: users[0].id },
                       { title: 'Англия',         level: '1', category_id: categories[0].id, author_id: users[0].id },
                       { title: 'Газы',           level: '2', category_id: categories[1].id, author_id: users[1].id },
                       { title: 'Трение',         level: '2', category_id: categories[1].id, author_id: users[1].id },
                       { title: 'Электричество',  level: '2', category_id: categories[1].id, author_id: users[1].id },
                       { title: 'Давление',       level: '2', category_id: categories[1].id, author_id: users[1].id },
                       { title: 'Континенты',     level: '3', category_id: categories[2].id, author_id: users[2].id },
                       { title: 'Горы',           level: '3', category_id: categories[2].id, author_id: users[2].id },
                       { title: 'Океаны',         level: '3', category_id: categories[2].id, author_id: users[2].id },
                       { title: 'Пустыни',        level: '3', category_id: categories[2].id, author_id: users[2].id },
                       { title: 'Функции',        level: '4', category_id: categories[3].id, author_id: users[3].id },
                       { title: 'Переменные',     level: '4', category_id: categories[3].id, author_id: users[3].id },
                       { title: 'Операции',       level: '4', category_id: categories[3].id, author_id: users[3].id },
                       { title: 'Анализ',         level: '4', category_id: categories[3].id, author_id: users[3].id }
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
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[0].id, respondent_id: users[1].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[1].id, respondent_id: users[1].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[2].id, respondent_id: users[1].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[3].id, respondent_id: users[1].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[4].id, respondent_id: users[2].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[5].id, respondent_id: users[2].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[6].id, respondent_id: users[2].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[7].id, respondent_id: users[2].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[8].id, respondent_id: users[3].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[9].id, respondent_id: users[3].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[10].id, respondent_id: users[3].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[11].id, respondent_id: users[3].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[12].id, respondent_id: users[0].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[13].id, respondent_id: users[0].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[14].id, respondent_id: users[0].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[15].id, respondent_id: users[0].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[16].id, respondent_id: users[1].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[17].id, respondent_id: users[1].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[18].id, respondent_id: users[1].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[19].id, respondent_id: users[1].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[20].id, respondent_id: users[2].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[21].id, respondent_id: users[2].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[22].id, respondent_id: users[2].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[23].id, respondent_id: users[2].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[24].id, respondent_id: users[2].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[25].id, respondent_id: users[0].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[26].id, respondent_id: users[0].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[27].id, respondent_id: users[0].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[28].id, respondent_id: users[0].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[29].id, respondent_id: users[0].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[30].id, respondent_id: users[0].id },
                 { body: 'Ответ такой ...', correct: [true, false].sample, question_id: questions[31].id, respondent_id: users[0].id }
               ])

Result.create!([
                 { test_id: tests[0].id, result: true, respondent_id: users[0].id },
                 { test_id: tests[1].id, result: true, respondent_id: users[0].id },
                 { test_id: tests[2].id, result: false, respondent_id: users[0].id },
                 { test_id: tests[3].id, result: true, respondent_id: users[1].id },
                 { test_id: tests[4].id, result: false, respondent_id: users[1].id },
                 { test_id: tests[5].id, result: true, respondent_id: users[2].id },
                 { test_id: tests[6].id, result: true, respondent_id: users[2].id },
                 { test_id: tests[7].id, result: false, respondent_id: users[3].id },
                 { test_id: tests[8].id, result: false, respondent_id: users[3].id },
                 { test_id: tests[9].id, result: true, respondent_id: users[0].id },
                 { test_id: tests[10].id, result: true, respondent_id: users[0].id },
                 { test_id: tests[11].id, result: false, respondent_id: users[1].id },
                 { test_id: tests[12].id, result: false, respondent_id: users[1].id },
                 { test_id: tests[13].id, result: true, respondent_id: users[2].id },
                 { test_id: tests[14].id, result: true, respondent_id: users[2].id },
                 { test_id: tests[15].id, result: true, respondent_id: users[3].id },
               ])
