class Survey < ActiveRecord::Base
  has_many :questions , dependent: :destroy
  has_many :answers
  belongs_to :user
end
