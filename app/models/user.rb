class User < ActiveRecord::Base

  include BCrypt

  has_many :surveys

  # before_save :get_encrypted_password

  validates :name, uniqueness: true, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true, presence: true,
          format: { with: /.+@.+\..+/}

  # def password
  #   @password ||= Password.new(password_hash)
  # end

  # def password=(new_password)
  #   if new_password.length > 0
  #     @password = Password.create(new_password)
  #     self.password_hash = @password
  #   else
  #     @password = ""
  #   end
  # end

  def self.authenticate(username, password)
    user = User.find_by_name(username)
    if user && user.password == password 
      user
    else
      false
    end
  end 

end
