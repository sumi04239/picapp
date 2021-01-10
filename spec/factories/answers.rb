FactoryBot.define do
  factory :answer do
    text { 'aaaaaaaaaa' }
    association :user
    association :advise
  end
end
