class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :advise

  validates :text, presence: true
end
