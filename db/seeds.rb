
sale_manager = User.create(name: 'salesman', email: 'salesman@gmail.com', password: 'password', password_confirmation: 'password')
logistic_manager = User.create(name: 'logistic', email: 'logistic@gmail.com', password: 'password', password_confirmation: 'password', department: 'logistic')


user = User.create([
    {
        name: 'Honey',
        email: 'honey@gmail.com',
        department: 'Factory'
    },
    {
        name: 'Jake',
        email: 'jake@gmail.com',
        department: 'Logistic'
    },
    {
        name: 'wutyi',
        email: 'wutyi@gmail.com',
        department: 'Warehouse'
    },
    {
        name: 'BiBi',
        email: 'bibi@gmail.com',
        department: 'Admin'
    }
])

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
        order_date: 10/01/2023,
        order_status: 'pending',
        total: 20000,
        urgent: true,
        permission: true,
        user_id: User.first.id
    },
    {
        client_id: Client.last.id,
        quantity: 20,
        order_date: 10/01/2023,
        order_status: 'pending',
        total: 20000,
        urgent: false,
        permission: false,
        user_id: User.last.id
    },
    {
        client_id: Client.last.id,
        quantity: 70,
        order_date: 10/03/2023,
        order_status: 'pending',
        total: 20000,
        urgent: true,
        permission: true,
        user_id: User.last.id
    },
    {
        client_id: Client.first.id,
        quantity: 200,
        order_date: 10/04/2023,
        order_status: 'pending',
        total: 20000,
        urgent: true,
        permission: true,
        user_id: User.first.id
    },
    {
        client_id: Client.find(Client.last.id - 2),
        quantity: 230,
        order_date: 10/15/2024,
        order_status: 'pending',
        total: 20000,
        urgent: false,
        permission: false,
        user_id: User.first.id
    },
])
delivery = Delivery.create([
    {
        preorder_id: Preorder.first.id,
        truck_id: Truck.first.id,
        distance: 40,
        delivery_date: 10/03/2024
    },
    {
        preorder_id: Preorder.last.id,
        truck_id: Truck.find(Truck.last.id - 2),
        distance: 40,
        delivery_date: 10/03/2024
    },
    {
        preorder_id: Preorder.find(Preorder.last.id - 2),
        truck_id: Truck.first.id,
        distance: 40,
        delivery_date: 10/14/2024
    },
    {
        preorder_id: Preorder.last.id,
        truck_id: Truck.last.id,
        distance: 40,
        delivery_date: 10/18/2024
    },
    {
        preorder_id: Preorder.first.id,
        truck_id: Truck.first.id,
        distance: 40,
        delivery_date: 10/13/2024
    },
])
preorder_items = PreorderItem.create([
    {
        preorder_id: Preorder.first.id,
        stock_id: 81,
        quantity: 23
    },
    {
        preorder_id: Preorder.last.id,
        stock_id: 82,
        quantity: 27
    },
    {
        preorder_id: Preorder.last.id,
        stock_id: 83,
        quantity: 12
    },
    {
        preorder_id: Preorder.first.id,
        stock_id: 87,
        quantity: 56
    },
    {
        preorder_id: Preorder.last.id,
        stock_id: 83,
        quantity: 12
    },
    {
        preorder_id: Preorder.find(Preorder.last.id - 2),
        stock_id: 87,
        quantity: 56
    },
])
restock = Restock.create(
    [
        {
            restock_date: 01/12/2005
        },
        {
            restock_date: 12/02/2020
        },
        {
            restock_date: 12/16/2024
        },
    ]
)
restock_details = RestockDetail.create(
    [
        {
            quantity: 20,
            expiry_date: 23/05/2023,
            restock_id: Restock.first.id,
            stock_id: Stock.last.id
        },
        {
            quantity: 50,
            expiry_date: 21/4/2023,
            restock_id: Restock.first.id,
            stock_id: Stock.last.id
        },
        {
            quantity: 30,
            expiry_date: 21/2/2023,
            restock_id: Restock.first.id,
            stock_id: Stock.last.id
        },
        {
            quantity: 40,
            expiry_date: 23/5/2023,
            restock_id: Restock.find(Restock.last.id - 2),
            stock_id: Stock.find(Stock.last.id - 2)
        },
    ]
)
stock_details = StockDetail.create(
    [
        {
            restock_id: Restock.first.id,
            quantity: 30,
            expiry_date: '15/02/2023',
            stock_id: Stock.first.id
        },
        {
            restock_id: Restock.first.id,
            quantity: 40,
            expiry_date: '13/08/2023',
            stock_id: Stock.first.id
        },
        {
            restock_id: Restock.last.id,
            quantity: 70,
            expiry_date: '02/27/2023',
            stock_id: Stock.last.id
        },
        {
            restock_id: Restock.last.id,
            quantity: 10,
            expiry_date: '02/10/2023',
            stock_id: Stock.last.id
        },
        {
            restock_id: Restock.find(Restock.last.id - 2),
            quantity: 10,
            expiry_date: '12/07/2023',
            stock_id: Stock.find(Stock.last.id - 2)
        },
        {
            restock_id: Restock.find(Restock.last.id - 2),
            quantity: 20,
            expiry_date: '12/09/2023',
            stock_id: Stock.find(Stock.last.id - 2)
        },
    ]
)