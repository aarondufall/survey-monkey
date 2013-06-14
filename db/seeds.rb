

rich = User.create(:name => "Rich",
                            :email => "rich@dbc.com",
                            :password => 'password')

s = Survey.new(:title => 'Fruit',
               :link => 'http://www.google.com',
               :user => rich)

question_text = "Who is the greatest actor of all time?"
options = ["Arnold Schwarzenneger", "John Wayne", "Dirty Harry", "Joe Blow"]


q = s.questions.build(:question_text => question_text,
                      :mandatory => false,
                      :helper_text => "Answer from the heart")

3.times do
  o = q.options.build(:option_text => )
end

2.times do
  a = o.answers.build
  s.answers << a
end



question_text = "What is faster?"
options = ["Cheetah", "Liger", "Hummingbird", "Sea Urchin", "Sneeze"]

q = s.questions.build(:question_text => question_text,
                        :mandatory => false,
                        :helper_text => "Answer from the heart")

options.each do |option|
  o = q.options.build(:option_text => option)
end

2.times do
  a = o.answers.build
  s.answers << a
end


question_text = "If you had to live on a planet, which would it be?"
options = ["The moon", "Pluto", "Uranus", "Jupiter", "Mars", "Venus", "Saturn", "Tatooine"]

q = s.questions.build(:question_text => question_text,
                        :mandatory => false,
                        :helper_text => "Answer from the heart")

options.each do |option|
  o = q.options.build(:option_text => option)
end

8.times do
  a = o.answers.build
  s.answers << a
end


question_text = "What's the coolest vehicle you could ride around in?"
options = ["Harley Davidson", "56 Mercury", "Pogo-stick", "Bicycle"]

q = s.questions.build(:question_text => question_text,
                        :mandatory => false,
                        :helper_text => "Answer from the heart")

options.each do |option|
  o = q.options.build(:option_text => )
end

2.times do
  a = o.answers.build
  s.answers << a
end

s.save


# q = s.questions.build(:question_text => 'Which is the greatest fruit of all time?',
#                         :mandatory => false,
#                         :helper_text => "Answer from the mind")

# o = q.options.build(:option_text => 'watermelon')
#   a = o.answers.build
#   s.answers << a
# o = q.options.build(:option_text => 'apple')
#   a = o.answers.build
#   s.answers << a

# q = s.questions.build(:question_text => 'Which is the worst fruit of all time?',
#                         :mandatory => false,
#                         :helper_text => "What does your gut tell you?")

# o = q.options.build(:option_text => 'stink fruit')
#   a = o.answers.build
#   s.answers << a
# o = q.options.build(:option_text => 'pears')
#   a = o.answers.build
#   s.answers << a

# q = s.questions.build(:question_text => 'Which is the sexiest fruit?',
#                         :mandatory => false,
#                         :helper_text => "Answer from the heart")

# o = q.options.build(:option_text => 'melons')
#   a = o.answers.build
#   s.answers << a
# o = q.options.build(:option_text => 'bananas')
#   a = o.answers.build
#   s.answers << a

# o = q.options.build(:option_text => 'strawberries')
#   a = o.answers.build
#   s.answers << a
