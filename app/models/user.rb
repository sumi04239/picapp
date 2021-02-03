class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :albums, dependent: :destroy
  has_many :advises
  has_many :answers
  has_many :likes
  

  with_options presence: true do
    validates :nickname
    validates :birthday
    validates :email
    validates :birthday
    validates :password, format: { with: /\A[a-zA-Z0-9]+\z/, message: 'Password Include both letters and numbers' },
                          length: { minimum: 6 }
  end
  
  def liked_by?(album_id)
    likes.where(album_id: album_id).exists?
  end
end
