# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
RestockDetail.destroy_all
StockDetail.destroy_all
Delivery.destroy_all
PreorderItem.destroy_all
Preorder.destroy_all
Client.destroy_all
Stock.destroy_all
Truck.destroy_all
Restock.destroy_all

sale_manager = User.create(name: 'salesman', email: 'salesman@gmail.com', password: 'password', password_confirmation: 'password')

logistic_manager = User.create(name: 'logistic', email: 'logistic@gmail.com', password: 'password', password_confirmation: 'password', department: 'logistic')

user = User.create(name: 'user', email: 'user@gmail.com', password: 'password', password_confirmation: 'password')

client = Client.create([
    {
        name: 'Culinary Delights Consortium', 
        region: 'Mandalay', 
        phone: '01231414', 
        address: '45st street, Mandalay',
    },

    {
        name: 'TastyHarvest Ventures',
        region: 'Yangon',
        phone: '01234567',
        address: 'Bogyoke Road, Yangon'
    },

    {
        name: 'DivinePalate Trading Co.',
        region: 'Yangon',
        phone: '0123456',
        address: 'Inya Lake Avenue, Yangon'
    },

    {
        name: 'Epicurean Express Ltd',
        region: 'Ayeyarwady',
        phone: '1234567',
        address: 'Strand Road, Ayeyarwady'
    },

    {
        name: 'Savory Delights Inc',
        region: 'Yangon',
        phone: '34545454',
        address: 'Merchant Street, Yangon'
    },

    {
        name: 'FlavorCraft Distributors',
        region: 'Yangon',
        phone: '13434545',
        address: 'Bogyoke Road, Yangon'
    },

    {
        name: 'Epicurean Haven.Ltd',
        region: 'Yangon',
        phone: '23343545',
        address: 'Sule Pagoda Road, Yangon'
    },

    {
        name: 'Culinary Heights Corporation',
        region: 'Sagaing',
        phone: '23344545' ,
        address: 'Mandalay Street, Sagaing' 
    },

    {
        name: 'FlavorCraft Distributors',
        region: 'Yangon',
        phone: '13434545',
        address: 'Bogyoke Road, Yangon'
    },

    {
        name: 'Delectable Morsels Co.',
        region: 'Yangon',
        phone: '23343434',
        address: '8th Avenue, Yangon' 
    },

    {
        name: 'Gastronomy Emporium Ltd',
        region: 'Yangon',
        phone: '233434',
        address:  'Anawrahta Road, Yangon'
    },

    {
        name: 'Epicurean Haven.Ltd',
        region: 'Yangon',
        phone: '23343545',
        address: 'Sule Pagoda Road, Yangon'
    },

    {
        name: 'Plate Pleasures Holdings',
        region: 'Yangon',
        phone: '3445456',
        address: 'Kandawgyi Park, Yangon'
    },

    {
        name: 'TasteMasters International',
        region: 'Bago',
        phone: '344545',
        address: 'Shwethalyaung Street, Bago' 
    },

    {
        name: 'TasteMasters International',
        region: 'Bago',
        phone: '344545',
        address: 'Shwethalyaung Street, Bago' 
    },

    {
        name: 'Delectable Morsels Co.',
        region: 'Yangon',
        phone: '23343434',
        address: '8th Avenue, Yangon' 
    },

    {
        name: 'Gourmet Elegance Enterpries',
        region: 'Yangon',
        phone: '343435',
        address: 'Merchant Street, Yangon' 
    },

    {
        name: 'Gastronomy Emporium Ltd',
        region: 'Yangon',
        phone: '233434',
        address:  'Anawrahta Road, Yangon'
    },

    {
        name: 'Palate Pleasures Holdings',
        region: 'Yangon',
        phone: '45455656',
        address: 'Kandawgyi Park, Yangon' 
    },

]);

stock_1 = Stock.create([
    {
        name: 'Burmese Bliss', 
        quantity: 3, 
        unit_price: 2000
    },

    {
        name: 'Golden Sunshine Tea',
        quantity: 4,
        unit_price: 5000 
    },

    {
        name: 'Mango Tango Delight',
        quantity: 2,
        unit_price: 1200 
    },

    {
        name: 'Rangoon Rosewater Elixir',
        quantity: 3,
        unit_price: 3000 
    },

    {
        name: 'Emerald Green Chai',
        quantity: 1,
        unit_price: 2000 
    },

    {
        name: 'Citrus Fusion Fizz',
        quantity: 3,
        unit_price: 6000 
    },

    {
        name: 'Coconut Cream Dream',
        quantity: 7, 
        unit_price: 1500 
    },

    {
        name: 'Jasmine Serenade Soda',
        quantity: 3,
        unit_price: 5000 
    },

    {
        name: 'Papaya Paradise Punch',
        quantity: 5,
        unit_price: 3000 
    },

    {
        name: 'Lychee Lullaby',
        quantity: 3,
        unit_price: 3400 
    },

    {
        name: 'Tropical Twilight Nectar',
        quantity: 2,
        unit_price: 5000 
    },

    {
        name: 'Orchid Oasis Euphoria',
        quantity: 3,
        unit_price: 6000 
    },

    {
        name: 'Starfruit Sparkling Sorbet',
        quantity: 5,
        unit_price: 4500 
    },

    {
        name: 'Ginger Zing Zest',
        quantity: 3,
        unit_price: 7000 
    },

    {
        name: "Lush Lemongrass Infusion",
        quantity: 3,
        unit_price: 6000 
    },

    {
        name: 'Ruby Red Guava Gusto',
        quantity: 3,
        unit_price: 7000 
    },

    {
        name: 'Blueberry Burst Breeze',
        quantity: 4,
        unit_price: 4000 
    },

    {
        name: 'Pineapple Pizzazz Quencher',
        quantity: 2,
        unit_price: 2000 
    },

    {
        name: 'Passionfruit Pomegranate Bliss',
        quantity: 3,
        unit_price: 1000 
    },

    {
        name: 'Exotic Cucumber Limeade',
        quantity: 5,
        unit_price: 3000 
    },

])

user = User.create([
    {
        name: 'Honey',
        department: 'Factory'
    },

    {
        name: 'Harry',
    },

    {
        name: 'Jake',
        department: 'Logistic'
    },

    {
        name: 'wutyi',
        department: 'Warehouse'
    },

    {
        name: 'BiBi',
        department: 'Admin'
    }
])

trucks = Truck.create([
    {
        license: '2C/9800',
        driver: 'Ko Aung Kyaw',
        capacity: 200,
        available: true,
    },

    {
        license: '4E/2400',
        driver: 'U Hla Maung',
        capacity: 1000,
        available: false,
    },

    {
        license: '5T/3100',
        driver: 'Ko Myo Thant',
        capacity: 600,
        available: true,
    },

    {
        license: '1Y/1100',
        driver: 'U Myint Aung',
        capacity: 800,
        available: true,
    },

    {
        license: '3W/200',
        driver: 'Ko Kyaw Zaw',
        capacity: 400,
        available: false,
    },
    
])

preorder_1 = Preorder.create([
    {
        client_id: Client.first.id, 
        quantity: 110, 
        order_date: '10/1/2023', 
        order_status: 'pending', 
        total: 20000, 
        user_id: User.first.id
    },

    {
        client_id: Client.first.id, 
        quantity: 20, 
        order_date: '10/1/2023', 
        order_status: 'pending', 
        total: 20000, 
        user_id: User.first.id
    },

    {
        client_id: Client.first.id, 
        quantity: 70, 
        order_date: '10/1/2023', 
        order_status: 'pending', 
        total: 20000, 
        user_id: User.first.id
    },

    {
        client_id: Client.first.id, 
        quantity: 200, 
        order_date: '10/4/2023',
        order_status: 'pending', 
        total: 20000, 
        user_id: User.first.id
    },

    {
        client_id: Client.first.id, 
        quantity: 230, 
        order_date: '10/3/2024', 
        order_status: 'pending', 
        total: 20000, 
        user_id: User.first.id
    },
])


delivery = Delivery.create([
    {
        preorder_id: Preorder.first.id,
        truck_id: Truck.first.id,
        distance: 40,
        delivery_date: '10/3/2024'
    },

    {
        preorder_id: 2,
        truck_id: 2,
        distance: 40,
        delivery_date: '10/3/2024'
    },

    {
        preorder_id: Preorder.first.id,
        truck_id: Truck.first.id,
        distance: 40,
        delivery_date: '10/3/2024'
    },

    {
        preorder_id: 3,
        truck_id: 3,
        distance: 40,
        delivery_date: '10/3/2024'
    },

    {
        preorder_id: Preorder.first.id,
        truck_id: Truck.first.id,
        distance: 40,
        delivery_date: '10/3/2024'
    },

])

preorder_items = PreorderItem.create([
    {
        preorder_id: Preorder.first.id,
        stock_id: Stock.first.id,
        price: 5000
    },

    {
        preorder_id: Preorder.first.id,
        stock_id: Stock.first.id,
        price: 5000
    },

    {
        preorder_id: Preorder.first.id,
        stock_id: 2,
        price: 5000
    },

    {
        preorder_id: Preorder.first.id,
        stock_id: 3,
        price: 5000
    },

    {
        preorder_id: Preorder.first.id,
        stock_id: 7,
        price: 5000
    },
])

restock = Restock.create(
    [
        {
            restock_date: '1/12/2005'
        },

        {
            restock_date: '12/2/2020'
        },

        {
            restock_date: '12/6/2024'
        },
    ]
)

restock_details = RestockDetail.create(
    [
        {
            quantity: 20,
            expiry_date: 23/5/2023,
            restock_id: Restock.first.id,
            stock_id: Stock.first.id
        },

        {
            quantity: 50,
            expiry_date: 21/4/2023,
            restock_id: Restock.first.id,
            stock_id: Stock.first.id
        },

        {
            quantity: 30,
            expiry_date: 21/2/2023,
            restock_id: Restock.first.id,
            stock_id: Stock.first.id
        },

        {
            quantity: 40,
            expiry_date: 23/5/2023,
            restock_id: Restock.first.id,
            stock_id: Stock.first.id
        },
    ]
)

stock_details = StockDetail.create(
    [
        {
            restock_id: Restock.first.id,
            quantity: 30,
            expiry_date: '15/2/2023',
            stock_id: Stock.first.id
        },

        {
            restock_id: Restock.first.id,
            quantity: 40,
            expiry_date: '13/8/2023',
            stock_id: Stock.first.id
        },

        {
            restock_id: Restock.first.id,
            quantity: 70,
            expiry_date: '2/7/2023',
            stock_id: Stock.first.id
        },

        {
            restock_id: Restock.first.id,
            quantity: 10,
            expiry_date: '2/10/2023',
            stock_id: Stock.last.id
        },

        {
            restock_id: Restock.first.id,
            quantity: 10,
            expiry_date: '2/7/2023',
            stock_id: Stock.last.id
        },

        {
            restock_id: Restock.first.id,
            quantity: 20,
            expiry_date: '2/9/2023',
            stock_id: Stock.last.id
        },
    ]
)