class User < ActiveRecord::Base
  has_many :surveys

  before_save :get_encrypted_password

  validates :name, uniqueness: true, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true, presence: true,
          format: { with: /.+@.+\..+/}


  private

  def self.authenticate(login_name, login_password)
    @user = self.find_by_name(login_name)
    return nil unless @user
    return @user if BCrypt::Password.new(@user.password) == login_password && @user.name == login_name
  end

  def get_encrypted_password
    self.password = BCrypt::Password.create(self.password)
  end


end
