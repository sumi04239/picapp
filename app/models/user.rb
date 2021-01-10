class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :albums
  has_many :advises
  has_many :answers

  with_options presence: true do
    validates :nickname
    validates :birthday
    validates :email
    validates :birthday
    validates :password, format: { with: /\A[a-zA-Z0-9]+\z/, message: 'Password Include both letters and numbers' },
                         length: { minimum: 6 }
  end
end
