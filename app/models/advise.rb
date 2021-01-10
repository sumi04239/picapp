class Advise < ApplicationRecord
  belongs_to :user
  has_many :answer

  with_options presence: true do
    validates :title, length: { minimum: 10 }
    validates :text, length: { minimum: 10 }
  end
end
