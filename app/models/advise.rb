class Advise < ApplicationRecord
  belongs_to :user
  has_many :answer, dependent: :destroy

  with_options presence: true do
    validates :title, length: { minimum: 10 }
    validates :text, length: { minimum: 10 }
  end
end
