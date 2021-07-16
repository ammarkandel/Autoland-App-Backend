FactoryBot.define do
  factory :appointment do
    date { Faker::Date }
    time { Faker::Time }
    user_id { Faker::Number == 1 }
    car_id { Faker::Number == 1 }
  end
end
