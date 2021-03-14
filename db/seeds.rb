# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([{ name: 'Евгений' }, { name: 'Александр' }])
categories = Category.create!([{ title: 'Экономика' }, { title: 'Педагогика' }, { title: 'Информатика' }])
tests = Test.create!([
                       { title: 'Статистика-базовый', level: '1', category_id: categories[0].id, author_id: users[0].id },
                       { title: 'Педагогика-средний', level: '2', category_id: categories[1].id, author_id: users[0].id },
                       { title: 'Информатика-продвинутый', level: '3', category_id: categories[2].id, author_id: users[1].id }
                     ])

questions = Question.create!([
                               { body: 'Статистика как наука изучает:', test_id: tests[0].id },
                               { body: 'Термин «статистика» происходит от слова:', test_id: tests[0].id },
                               { body: 'Статистика зародилась и оформилась как самостоятельная учебная дисциплина:', test_id: tests[0].id },
                               { body: 'Этап планирования урока включает в себя такие взаимосвязанные стадии, как…', test_id: tests[1].id },
                               { body: 'Закрепление как этап урока включает в себя…', test_id: tests[1].id },
                               { body: 'Система взглядов на понимание сущности содержания и методики организации учебного процесса - это…', test_id: tests[1].id },
                               { body: 'НИОКР подразделяются на:', test_id: tests[2].id },
                               { body: 'Инновации бывают:', test_id: tests[2].id },
                               { body: 'На каком этапе жизненного цикла создания ИС проводится анализ предметной области?;', test_id: tests[2].id }
                             ])

Answer.create!([
                 { body: 'единичные явления;', correct: false, question_id: questions[0].id },
                 { body: 'массовые явления;', correct: true, question_id: questions[0].id },
                 { body: 'периодические события.', correct: false, question_id: questions[0].id },
                 { body: 'статика;', correct: false, question_id: questions[1].id },
                 { body: 'статный;', correct: false, question_id: questions[1].id },
                 { body: 'статус.', correct: true, question_id: questions[1].id },
                 { body: 'до новой эры, в Китае и Древнем Риме;', correct: false, question_id: questions[2].id },
                 { body: 'в 17-18 веках, в Европе;', correct: true, question_id: questions[2].id },
                 { body: 'в 20 веке, в России.', correct: false, question_id: questions[2].id },
                 { body: 'разработка дидактического аппарата', correct: true, question_id: questions[3].id },
                 { body: 'установление структуры урока с проработкой учебных ситуаций', correct: true, question_id: questions[3].id },
                 { body: 'проведение педагогической диагностики', correct: false, question_id: questions[3].id },
                 { body: 'специальные задания после объяснения материала', correct: true, question_id: questions[4].id },
                 { body: 'разъяснение основных идей учебного материала', correct: false, question_id: questions[4].id },
                 { body: 'выработку умений применения знаний', correct: true, question_id: questions[4].id },
                 { body: 'мировоззрение педагога', correct: false, question_id: questions[5].id },
                 { body: 'профессиональное сознание', correct: true, question_id: questions[5].id },
                 { body: 'концепция обучения', correct: false, question_id: questions[5].id },
                 { body: 'товарные НИОКР, Капитальные НИОКР', correct: true, question_id: questions[6].id },
                 { body: 'краткосрочные, среднесрочные', correct: false, question_id: questions[6].id },
                 { body: 'стратегически важные, потенциально интересные', correct: false, question_id: questions[6].id },
                 { body: 'патентные, лицензионные', correct: false, question_id: questions[7].id },
                 { body: 'улучшающие, радикальные', correct: true, question_id: questions[7].id },
                 { body: 'объективные, субъективные', correct: false, question_id: questions[7].id },
                 { body: 'Проектирование', correct: false, question_id: questions[8].id },
                 { body: 'Ввод в эксплуатацию', correct: false, question_id: questions[8].id },
                 { body: 'Предпроектное обследование', correct: true, question_id: questions[8].id }
               ])

Result.create!([
                 { test_id: tests[0].id, result: true, user_id: users[0].id },
                 { test_id: tests[1].id, result: false, user_id: users[0].id },
                 { test_id: tests[2].id, result: false, user_id: users[0].id },
                 { test_id: tests[0].id, result: true, user_id: users[1].id },
                 { test_id: tests[1].id, result: false, user_id: users[1].id },
                 { test_id: tests[2].id, result: true, user_id: users[1].id }
               ])
