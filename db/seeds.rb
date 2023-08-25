# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

User.all.each do |user|
  2.times do
    file = URI.open("https://source.unsplash.com/random?nike%20dunks")
    file2 = URI.open("https://source.unsplash.com/random?nike%20dunks")
    file3 = URI.open("https://source.unsplash.com/random?nike%20dunks")
    file4 = URI.open("https://source.unsplash.com/random?nike%20dunks")
    file5 = URI.open("https://source.unsplash.com/random?nike%20dunks")
    shoe = Shoe.new(price_per_day: rand(100..900), name: "Nike Dunks", brand: "Nike", city: "London")
    shoe.user = user
    shoe.photos.attach(io: file, filename: "nkdnk1.png", content_type: "image/png")
    shoe.photos.attach(io: file2, filename: "nkdnk2.png", content_type: "image/png")
    shoe.photos.attach(io: file3, filename: "nkdnk3.png", content_type: "image/png")
    shoe.photos.attach(io: file4, filename: "nkdnk4.png", content_type: "image/png")
    shoe.photos.attach(io: file5, filename: "nkdnk5.png", content_type: "image/png")
    shoe.save
  end
end

User.all.each do |user|
  2.times do
    file = URI.open("https://source.unsplash.com/random?vans")
    file2 = URI.open("https://source.unsplash.com/random?vans")
    file3 = URI.open("https://source.unsplash.com/random?vans")
    file4 = URI.open("https://source.unsplash.com/random?vans")
    file5 = URI.open("https://source.unsplash.com/random?vans")
    shoe = Shoe.new(price_per_day: rand(100..900), name: "Vans", brand: "Vans", city: "London")
    shoe.user = user
    shoe.photos.attach(io: file, filename: "vans.png", content_type: "image/png")
    shoe.photos.attach(io: file2, filename: "vans.png", content_type: "image/png")
    shoe.photos.attach(io: file3, filename: "vans.png", content_type: "image/png")
    shoe.photos.attach(io: file4, filename: "vans.png", content_type: "image/png")
    shoe.photos.attach(io: file5, filename: "vans.png", content_type: "image/png")
    shoe.save
  end
end

User.all.each do |user|
  2.times do
    file = URI.open("https://source.unsplash.com/random?adidas")
    file2 = URI.open("https://source.unsplash.com/random?adidas")
    file3 = URI.open("https://source.unsplash.com/random?adidas")
    file4 = URI.open("https://source.unsplash.com/random?adidas")
    file5 = URI.open("https://source.unsplash.com/random?adidas")
    shoe = Shoe.new(price_per_day: rand(100..900), name: "Adiddas Shoes", brand: "adiddas", city: "London")
    shoe.user = user
    shoe.photos.attach(io: file, filename: "adiddas.png", content_type: "image/png")
    shoe.photos.attach(io: file2, filename: "adiddas.png", content_type: "image/png")
    shoe.photos.attach(io: file3, filename: "adiddas.png", content_type: "image/png")
    shoe.photos.attach(io: file4, filename: "adiddas.png", content_type: "image/png")
    shoe.photos.attach(io: file5, filename: "adiddas.png", content_type: "image/png")
    shoe.save
  end
end
