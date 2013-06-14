class User < ActiveRecord::Base
  has_many :surveys
end
