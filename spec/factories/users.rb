FactoryBot.define do
  factory :user do
    nickname      { Faker::Name.initials }
    email         { Faker::Internet.free_email }
    password      { 'aaa000' }
    password_confirmation { password }
    birthday { '1983-10-07' }
  end
end
