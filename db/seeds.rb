

rich = User.create(:name => "Rich",
                            :email => "rich@dbc.com",
                            :password => 'password')

s = Survey.new(:title => 'Fruit',
               :link => 'http://www.google.com',
               :user => rich)


q = s.questions.build(:question_text => 'Which is the greatest fruit of all time?',
                        :mandatory => false,
                        :helper_text => "Answer from the mind")

o = q.options.build(:option_text => 'watermelon')
  a = o.answers.build
  s.answers << a
o = q.options.build(:option_text => 'apple')
  a = o.answers.build
  s.answers << a

q = s.questions.build(:question_text => 'Which is the worst fruit of all time?',
                        :mandatory => false,
                        :helper_text => "What does your gut tell you?")

o = q.options.build(:option_text => 'stink fruit')
  a = o.answers.build
  s.answers << a
o = q.options.build(:option_text => 'pears')
  a = o.answers.build
  s.answers << a

q = s.questions.build(:question_text => 'Which is the sexiest fruit?',
                        :mandatory => false,
                        :helper_text => "Answer from the heart")

o = q.options.build(:option_text => 'melons')
  a = o.answers.build
  s.answers << a
o = q.options.build(:option_text => 'bananas')
  a = o.answers.build
  s.answers << a

o = q.options.build(:option_text => 'strawberries')
  a = o.answers.build
  s.answers << a


s.save



# 5.times do
#   q = s.questions.build(:question_text => Faker::Lorem.sentence(5),
#                         :mandatory => false,
#                         :helper_text => "Answer from the heart")
#     3.times do
#       o = q.options.build(:option_text => Faker::Lorem.sentence(3))

#       2.times do
#         a = o.answers.build
#         s.answers << a
#       end
#     end
# end
