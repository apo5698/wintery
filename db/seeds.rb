# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.create!(
  name: 'Central China',
  alias: '滋味湖南',
  address: '9390 Bellaire Blvd, Houston, TX 77036',
  category: :restaurant,
  rating: 5
)
