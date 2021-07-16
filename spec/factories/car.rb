FactoryBot.define do
  price_array = %w[500000 200000 300000]
  release_year = %w[2021 2020]

  factory :car do
    name { Faker::String }
    color { Faker::String }
    category { Faker::String }
    price { price_array.sample }
    release_year { release_year.sample }
    speed { Faker::String }
  end
end
