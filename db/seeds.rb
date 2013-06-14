

rich = User.create(:name => "Rich",
                            :email => "rich@dbc.com",
                            :password_hash => 'password')

s = Survey.new(:title => 'Fruit',
               :link => 'http://www.google.com',
               :user => rich)

5.times do
  q = s.questions.build(:question_text => Faker::Lorem.sentence(5),
                        :mandatory => false,
                        :helper_text => "Answer from the heart")
    3.times do
      q.options.build(:option_text => Faker::Lorem.sentence(3))
    end
end

s.save
