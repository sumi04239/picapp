class Album < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  has_many :likes

  with_options presence: true do
    validates :title, length: { minimum: 10 }
    validates :text, length: { minimum: 10 }
    validates :image
  end

  def self.search(search)
    if search !="" 
      Album.where('title LIKE(?)', "%#{search}%")
    else
      Album.all
    end
  end

end
