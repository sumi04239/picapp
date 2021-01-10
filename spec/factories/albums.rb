FactoryBot.define do
  factory :album do
    text  { 'aaaaaaaaaa'}
    title { 'aaaaaaaaaa'}
    association :user

    after(:build) do |album|
      album.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
