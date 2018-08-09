# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

harry = User.create({username: 'Harry_potter'})
jane = User.create({username: 'jane_doe'})
larry = User.create({username: 'larry_the_lobster'})

this_poll = Poll.create({user_id: harry.id, title: 'The Philosopher''s Stone'})
that_poll = Poll.create({user_id: jane.id, title: 'Vote for Jane'})

why = Question.create({text_question: 'Why', poll_id: this_poll.id})
how = Question.create({text_question: 'How', poll_id: that_poll.id})

choice_one = AnswerQuestion.create({question_id: why.id , text_choice: "not because" })
choice_two = AnswerQuestion.create({question_id: how.id , text_choice: "I said so" })

resp2 = Response.create({answer_choice_id: choice_one.id, user_id: larry.id, response_text: 'blah'})
