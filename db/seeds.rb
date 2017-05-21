# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.transaction do

  21.times do
    Client.create!(first_name: Faker::Name.first_name.first(10),
                   last_name: Faker::Name.last_name.first(10),
                   phone: Faker::PhoneNumber.cell_phone)
  end

  21.times do
    Culture.create!(name: Faker::Company.name.first(10))
  end

  21.times do
    GardenBed.create!(comment: Faker::Lorem.sentence, num: rand(1000))
  end

  100.times do
    Deed.create!(name: Faker::Lorem.characters(20))
  end

  300.times do
    Flower.create!(f_name: Faker::Name.first_name.first(20),
                   culture_id: Culture.ids.sample,
                   cost: rand(100),
                   planting_date: Time.at(rand(100..200)/20.0 * Time.now.to_i),
                   garden_bed_id: GardenBed.ids.sample)

  end

  1000.times do
    Elevation.create!(deed_id: Deed.ids.sample,
                      flower_id: Flower.ids.sample,
                      comment: Faker::Lorem.sentence)
  end

  50.times do
    Order.create!(date: Time.at(rand(100..200)/20.0 * Time.now.to_i), cost: rand(1..100),
                 flower_id: Flower.ids.sample, client_id: Client.ids.sample)
  end

  50.times do
    Result.create!(flower_id: Flower.ids.sample, result_date: Time.at(rand(100..200)/20.0 * Time.now.to_i),
                   comment: Faker::Lorem.sentence)

  end
end