# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Response.destroy_all
AnswerChoice.destroy_all
Question.destroy_all
Poll.destroy_all
User.destroy_all

a = User.create!(username: 'Andrew')
b = User.create!(username: 'GregLovesButts')
c = User.create!(username: 'Digby')
d = User.create!(username: 'Garfield')
e = User.create!(username: 'Cerberus')

a1 = Poll.create!(title: "Butts", creator_id: b.id)
b1 = Poll.create!(title: "Pineapples", creator_id: c.id)
c1 = Poll.create!(title: "Turnips", creator_id: a.id)
d1 = Poll.create!(title: "Lasagna", creator_id: d.id)
e1 = Poll.create!(title: "Subterranean Creatures", creator_id: c.id)

a2 = Question.create!(text: "Do you like big ones?", poll_id: a1.id)
b2 = Question.create!(text: "Can you lie?", poll_id: a1.id)
c2 = Question.create!(text: "Do you like them?", poll_id: b1.id)
d2 = Question.create!(text: "Turnip for what?", poll_id: c1.id)
e2 = Question.create!(text: "Is it a fruit or a veggie?", poll_id: c1.id)
f2 = Question.create!(text: "Better than carrots?", poll_id: d1.id)
g2 = Question.create!(text: "Who has squarepants?", poll_id: e1.id)
h2 = Question.create!(text: "Patrick?", poll_id: e1.id)

a3 = AnswerChoice.create!(text: "Yes", question_id: a2.id)
b3 = AnswerChoice.create!(text: "No", question_id: a2.id)
c3 = AnswerChoice.create!(text: "Yes", question_id: b2.id)
d3 = AnswerChoice.create!(text: "No", question_id: b2.id)
# AnswerChoice.create!(text: "Yes", id: c2.id)
# AnswerChoice.create!(text: "No", id: c2.id)
# AnswerChoice.create!(text: "Yes", id: d2.id)
# AnswerChoice.create!(text: "No", id: d2.id)
# AnswerChoice.create!(text: "Yes", id: e2.id)
# AnswerChoice.create!(text: "No", id: e2.id)
# AnswerChoice.create!(text: "Yes", id: f2.id)
# AnswerChoice.create!(text: "No", id: f2.id)
# AnswerChoice.create!(text: "Yes", id: g2.id)
# AnswerChoice.create!(text: "No", id: g2.id)
# AnswerChoice.create!(text: "Yes", id: h2.id)
# AnswerChoice.create!(text: "No", id: h2.id)
# AnswerChoice.create!(text: "Mayonnaise", id: h2.id)



Response.create!(respondent_id: a.id, choice_id: d3.id)
Response.create!(respondent_id: b.id, choice_id: d3.id)
Response.create!(respondent_id: c.id, choice_id: c3.id)
Response.create!(respondent_id: d.id, choice_id: b3.id)
Response.create!(respondent_id: d.id, choice_id: a3.id)






