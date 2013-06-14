class Question < ActiveRecord::Base
  has_many :options
  has_many :answers, :through => :options
  belongs_to :survey

end
