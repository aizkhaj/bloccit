class User < ActiveRecord::Base
  has_many :posts
  before_save { self.email = email.downcase if email.present? }
  before_save { self.role ||= :member }

  validates :name, length: { minimum: 1, maximum: 100 }, presence: true

  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?" #this is for setting a new user password
  validates :password, length: {minimum: 6}, allow_blank: true #this is updating user and password

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }

  has_secure_password
  # Adds methods to set and authenticate against a BCrypt password. This mechanism requires you to have a password_digest attribute.

  enum role: [:member, :admin, :moderator]
end
