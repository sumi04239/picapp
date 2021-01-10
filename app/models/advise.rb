class Advise < ApplicationRecord
  belongs_to :user
  has_many :answer

  with_options presence: true do
    validates :title
    validates :text
  end
end
