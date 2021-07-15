FactoryBot.define do
 factory :appointment do
  date { Faker::Date }
  time { Faker::Time }
  user_id {Faker::Number}
  car_id {Faker::Number}
 end
end
