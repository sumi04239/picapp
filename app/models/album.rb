class Album < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title, length: { minimum: 10 }
    validates :text, length: { minimum: 10 }
    validates :image
  end
end
