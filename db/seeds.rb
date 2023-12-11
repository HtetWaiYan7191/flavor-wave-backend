# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

client = Client.create(name: 'kfc', region: 'yangon', phone: '01231414', address: 'No(40) street yangon')
Stock.create(name: 'chicken', quantity: 3, unit_price: 2000)

Preorder.create(client_id: client.id, quantity: 20, order_date: '12/2/2020', order_status: 'pending',
                total: 20_000, user_id: User.first.id)
