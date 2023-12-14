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

# Client seeding
client1  = Client.create([ name: 'Culinary Delights Consortium', region: 'Mandalay',   phone: '09876567898', address: '45st street, Mandalay'])
client2  = Client.create([ name: 'TastyHarvest Ventures',        region: 'Yangon',     phone: '09876734212', address: 'Bogyoke Road, Yangon'])
client3  = Client.create([ name: 'DivinePalate Trading Co',      region: 'Yangon',     phone: '09878909876',  address: 'Inya Lake Avenue, Yangon'])
client4  = Client.create([ name: 'Epicurean Express Ltd',       region: 'Ayeyarwady', phone: '09867907532',  address: 'Strand Road, Ayeyarwady'])
client5  = Client.create([ name: 'Savory Delights Inc',          region: 'Yangon',     phone: '09456765423', address: 'Merchant Street, Yangon'])
client6  = Client.create([ name: 'FlavorCraft Distributors',     region: 'Yangon',     phone: '09158642907',  address: 'Bogyoke Road, Yangon'])
client7  = Client.create([ name: 'Epicurean Haven.Ltd',          region: 'Yangon',     phone: '09546789432', address: 'Sule Pagoda Road, Yangon'])
client8  = Client.create([ name: 'Culinary Heights Corporation', region: 'Sagaing',    phone: '09148734067', address: 'Mandalay Street, Sagaing'])
client9  = Client.create([ name: 'FlavorCraft Distributors',     region: 'Yangon',     phone: '09909756446', address: 'Bogyoke Road, Yangon'])
client10 = Client.create([ name: 'Delectable Morsels Co.',       region: 'Yangon',     phone: '09176588907', address: '8th Avenue, Yangon'])
client11 = Client.create([ name: 'Gastronomy Emporium Ltd',      region: 'Yangon',     phone: '09165488790',   address: 'Anawrahta Road, Yangon'])
client12 = Client.create([ name: 'Epicurean Haven.Ltd',          region: 'Yangon',     phone: '09546789432', address: 'Sule Pagoda Road, Yangon'])                                                                                                
client13 = Client.create([ name: 'Plate Pleasures Holdings',     region: 'Yangon',     phone: '09221478659',  address: 'Kandawgyi Park, Yangon' ])                                                                                                  
client14 = Client.create([ name: 'TasteMasters International',   region: 'Bago',       phone: '09356865546',   address: 'Shwethalyaung Street, Bago'])
client15 = Client.create([ name: 'TasteMasters International',   region: 'Bago',       phone: '09463375466',   address: 'Shwethalyaung Street, Bago'])
client16 = Client.create([ name: 'Delectable Morsels Co.',       region: 'Yangon',     phone: '09135436577', address: '8th Avenue, Yangon'])
client17 = Client.create([ name: 'Gourmet Elegance Enterpries',  region: 'Yangon',     phone: '09143766435',   address: 'Merchant Street, Yangon'])
client18 = Client.create([ name: 'Gastronomy Emporium Ltd',      region: 'Yangon',     phone: '09765766566',   address:  'Anawrahta Road, Yangon'])
client19 = Client.create([ name: 'Palate Pleasures Holdings',    region: 'Yangon',     phone: '091375544245', address: 'Kandawgyi Park, Yangon'])

# stock seeding
stock1  = Stock.create ([ name: 'Burmese Bliss',                  quantity: 30,    unit_price: 2000]);
stock2  = Stock.create ([ name: 'Golden Sunshine Tea',            quantity: 40,    unit_price: 5000]);
stock3  = Stock.create ([ name: 'Mango Tango Delight',            quantity: 20,    unit_price: 1200]);
stock4  = Stock.create ([ name: 'Rangoon Rosewater Elixir',       quantity: 30,    unit_price: 3000]);
stock5  = Stock.create ([ name: 'Emerald Green Chai',             quantity: 10,    unit_price: 2000]);
stock6  = Stock.create ([ name: 'Citrus Fusion Fizz',             quantity: 30,    unit_price: 6000]);
stock7  = Stock.create ([ name: 'Coconut Cream Dream',            quantity: 70,    unit_price: 1500]);
stock8  = Stock.create ([ name: 'Jasmine Serenade Soda',          quantity: 30,    unit_price: 5000]);
stock9  = Stock.create ([ name: 'Papaya Paradise Punch',          quantity: 50,    unit_price: 3000]);
stock10 = Stock.create ([ name: 'Lychee Lullaby',                 quantity: 30,    unit_price: 3400]);
stock11 = Stock.create ([ name: 'Tropical Twilight Nectar',       quantity: 20,    unit_price: 5000]);
stock12 = Stock.create ([ name: 'Orchid Oasis Euphoria',          quantity: 30,    unit_price: 6000]);
stock13 = Stock.create ([ name: 'Starfruit Sparkling Sorbet',     quantity: 50,    unit_price: 4500])
stock14 = Stock.create ([ name: 'Ginger Zing Zest',               quantity: 30,    unit_price: 7000])
stock15 = Stock.create ([ name: "Lush Lemongrass Infusion",       quantity: 30,    unit_price: 6000])
stock16 = Stock.create ([ name: 'Ruby Red Guava Gusto',           quantity: 30,    unit_price: 7000])
stock17 = Stock.create ([ name: 'Blueberry Burst Breeze',         quantity: 40,    unit_price: 4000])
stock18 = Stock.create ([ name: 'Pineapple Pizzazz Quencher',     quantity: 20,    unit_price: 2000])
stock19 = Stock.create ([ name: 'Passionfruit Pomegranate Bliss', quantity: 30,    unit_price: 1000])
stock20 = Stock.create ([ name: 'Exotic Cucumber Limeade',        quantity: 50,    unit_price: 3000])

#truck seeding
truck1 = Truck.create([license: '2C/9800',driver: 'Ko Aung Kyaw',capacity: 200,available: true])
truck2 = Truck.create([license: '4E/2400',driver: 'U Hla Maung',capacity: 1000,available: false])
truck3 = Truck.create([license: '5T/3100',driver: 'Ko Myo Thant',capacity: 600,available: true])
truck4 = Truck.create([license: '1Y/1100',driver: 'U Myint Aung',capacity: 800,available: true])
truck5 = Truck.create([license: '3W/200',driver: 'Ko Kyaw Zaw',capacity: 400,available: false])

#restock seeding
restock1 = Restock.create([restock_date: "01/12/2005"])
restock2 = Restock.create([restock_date: "12/02/2020"])
restock3 = Restock.create([restock_date: "12/16/2024"])


#restock details
restockDetails1  = RestockDetail.create([quantity: 30, expiry_date: "23/05/2023", restock_id: restock1, stock_id: stock1])
restockDetails2  = RestockDetail.create([quantity: 40, expiry_date: "21/4/2023",  restock_id: restock2, stock_id: stock2])
restockDetails3  = RestockDetail.create([quantity: 20, expiry_date: "21/2/2023",  restock_id: restock3, stock_id: stock3])
restockDetails4  = RestockDetail.create([quantity: 30, expiry_date: "23/5/2023",  restock_id: restock1, stock_id: stock4])
restockDetails5  = RestockDetail.create([quantity: 10, expiry_date: "23/05/2023", restock_id: restock1, stock_id: stock5])
restockDetails6  = RestockDetail.create([quantity: 30, expiry_date: "23/05/2023", restock_id: restock1, stock_id: stock6])
restockDetails7  = RestockDetail.create([quantity: 70, expiry_date: "23/05/2023", restock_id: restock1, stock_id: stock7])
restockDetails8  = RestockDetail.create([quantity: 30, expiry_date: "23/05/2023", restock_id: restock1, stock_id: stock8])
restockDetails9  = RestockDetail.create([quantity: 50, expiry_date: "23/05/2023", restock_id: restock1, stock_id: stock9])
restockDetails10 = RestockDetail.create([quantity: 30, expiry_date: "23/05/2023", restock_id: restock1, stock_id: stock10])
restockDetails11 = RestockDetail.create([quantity: 20, expiry_date: "23/05/2023", restock_id: restock2, stock_id: stock11])
restockDetails12 = RestockDetail.create([quantity: 30, expiry_date: "23/05/2023", restock_id: restock2, stock_id: stock12])
restockDetails13 = RestockDetail.create([quantity: 50, expiry_date: "23/05/2023", restock_id: restock2, stock_id: stock13])
restockDetails14 = RestockDetail.create([quantity: 30, expiry_date: "23/05/2023", restock_id: restock2, stock_id: stock14])
restockDetails15 = RestockDetail.create([quantity: 30, expiry_date: "23/05/2023", restock_id: restock2, stock_id: stock15])
restockDetails16 = RestockDetail.create([quantity: 30, expiry_date: "23/05/2023", restock_id: restock2, stock_id: stock16])
restockDetails17 = RestockDetail.create([quantity: 40, expiry_date: "23/05/2023", restock_id: restock3, stock_id: stock17])
restockDetails18 = RestockDetail.create([quantity: 20, expiry_date: "23/05/2023", restock_id: restock3, stock_id: stock18])
restockDetails19 = RestockDetail.create([quantity: 30, expiry_date: "23/05/2023", restock_id: restock3, stock_id: stock19])
restockDetails20 = RestockDetail.create([quantity: 50, expiry_date: "23/05/2023", restock_id: restock3, stock_id: stock20])
restockDetails21 = RestockDetail.create([quantity: 50, expiry_date: "23/05/2023", restock_id: restock3, stock_id: stock20])
restockDetails22 = RestockDetail.create([quantity: 50, expiry_date: "23/05/2023", restock_id: restock3, stock_id: stock20])
restockDetails23 = RestockDetail.create([quantity: 50, expiry_date: "23/05/2023", restock_id: restock3, stock_id: stock20])
restockDetails24 = RestockDetail.create([quantity: 30, expiry_date: "23/05/2023", restock_id: restock2, stock_id: stock14])
restockDetails25 = RestockDetail.create([quantity: 30, expiry_date: "23/06/2023", restock_id: restock2, stock_id: stock2])
restockDetails26 = RestockDetail.create([quantity: 30, expiry_date: "23/06/2023", restock_id: restock1, stock_id: stock1])
restockDetails27 = RestockDetail.create([quantity: 30, expiry_date: "23/06/2023", restock_id: restock1, stock_id: stock8])
restockDetails28 = RestockDetail.create([quantity: 30, expiry_date: "23/06/2023", restock_id: restock2, stock_id: stock14])

#Stock Details
stock_details1  = StockDetail.create([restock_id: restockDetails1,  quantity: 30,   expiry_date: '15/02/2023',stock_id: stock1]);
stock_details2  = StockDetail.create([restock_id: restockDetails2,  quantity: 40,   expiry_date: '13/08/2023',stock_id: stock2]);
stock_details3  = StockDetail.create([restock_id: restockDetails3,  quantity: 20,   expiry_date: '12/07/2023',stock_id: stock3]);
stock_details4  = StockDetail.create([restock_id: restockDetails4,  quantity: 30,   expiry_date: '02/10/2023',stock_id: stock4]);
stock_details5  = StockDetail.create([restock_id: restockDetails5,  quantity: 10,   expiry_date: '12/07/2023',stock_id: stock5]);
stock_details6  = StockDetail.create([restock_id: restockDetails6,  quantity: 30,   expiry_date: '12/09/2023',stock_id: stock6]);
stock_details7  = StockDetail.create([restock_id: restockDetails7,  quantity: 70,   expiry_date: '11/12/2023',stock_id: stock7]);
stock_details8  = StockDetail.create([restock_id: restockDetails8,  quantity: 30,   expiry_date: '28/2/2023' ,stock_id: stock8]);
stock_details9  = StockDetail.create([restock_id: restockDetails9,  quantity: 50,   expiry_date: '5/12/2023' ,stock_id: stock9]);
stock_details10 = StockDetail.create([restock_id: restockDetails10, quantity: 30,   expiry_date: '25/05/2023',stock_id: stock10]);
stock_details11 = StockDetail.create([restock_id: restockDetails11, quantity: 20,   expiry_date: '2/06/2023' ,stock_id: stock11]);
stock_details12 = StockDetail.create([restock_id: restockDetails12, quantity: 30,   expiry_date: '1/03/2023' ,stock_id: stock12]);
stock_details13 = StockDetail.create([restock_id: restockDetails13, quantity: 50,   expiry_date: '12/04/2023',stock_id: stock13]);
stock_details14 = StockDetail.create([restock_id: restockDetails14, quantity: 30,   expiry_date: '5/03/2023' ,stock_id: stock14]);
stock_details15 = StockDetail.create([restock_id: restockDetails15, quantity: 30,   expiry_date: '5/12/2023' ,stock_id: stock15]);
stock_details16 = StockDetail.create([restock_id: restockDetails16, quantity: 30,   expiry_date: '15/1/2023' ,stock_id: stock16]);
stock_details17 = StockDetail.create([restock_id: restockDetails17, quantity: 40,   expiry_date: '16/06/2023',stock_id: stock17]);
stock_details18 = StockDetail.create([restock_id: restockDetails18, quantity: 20,   expiry_date: '17/04/2023',stock_id: stock18]);
stock_details19 = StockDetail.create([restock_id: restockDetails19, quantity: 30,   expiry_date: '18/07/2023',stock_id: stock19]);
stock_details20 = StockDetail.create([restock_id: restockDetails20, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock20]);
stock_details21 = StockDetail.create([restock_id: restockDetails21, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock20]);
stock_details22 = StockDetail.create([restock_id: restockDetails22, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock20]);
stock_details23 = StockDetail.create([restock_id: restockDetails23, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock20]);
stock_details24 = StockDetail.create([restock_id: restockDetails24, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock14]);
stock_details25 = StockDetail.create([restock_id: restockDetails25, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock2]);
stock_details26 = StockDetail.create([restock_id: restockDetails26, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock1]);
stock_details27 = StockDetail.create([restock_id: restockDetails27, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock8]);
stock_details28 = StockDetail.create([restock_id: restockDetails28, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock14]);

#preorder
preorder1   = Preorder.create([client_id: client1,  quantity: 110, order_date: "14/01/2023", order_status: 'pending',     total: 15000, urgent: true,  permission: true, user_id: User.first.id])
preorder2   = Preorder.create([client_id: client2,  quantity: 110, order_date: "10/01/2023", order_status: 'pending',     total: 15000, urgent: true,  permission: true, user_id: User.first.id]) 
preorder3   = Preorder.create([client_id: client3,  quantity: 140, order_date: "01/01/2023", order_status: 'pending',     total: 15000, urgent: true,  permission: true, user_id: User.first.id])
preorder4   = Preorder.create([client_id: client4,  quantity: 160, order_date: "05/01/2023", order_status: 'pending',     total: 50000, urgent: true,  permission: false, user_id: User.first.id])   
preorder5   = Preorder.create([client_id: client5,  quantity: 170, order_date: "02/01/2023", order_status: 'pending',     total: 50000, urgent: false, permission: false, user_id: User.first.id])   
preorder6   = Preorder.create([client_id: client6,  quantity: 210, order_date: "07/01/2023", order_status: 'pending',     total: 50000, urgent: false, permission: false, user_id: User.first.id])
preorder7   = Preorder.create([client_id: client7,  quantity: 410, order_date: "14/02/2023", order_status: 'pending',     total: 50000, urgent: false, permission: false, user_id: User.first.id])
preorder8   = Preorder.create([client_id: client8,  quantity: 150, order_date: "05/02/2023", order_status: 'pending',     total: 15000, urgent: false, permission: false, user_id: User.first.id])
preorder9   = Preorder.create([client_id: client9,  quantity: 160, order_date: "23/02/2023", order_status: 'pending',     total: 20000, urgent: false, permission: false, user_id: User.first.id])
preorder10  = Preorder.create([client_id: client10, quantity: 117, order_date: "21/02/2023", order_status: 'deliverd',    total: 20000, urgent: false, permission: false, user_id: User.first.id])  
preorder11  = Preorder.create([client_id: client11, quantity: 130, order_date: "01/02/2023", order_status: 'pending',     total: 40000, urgent: true,  permission: true, user_id: User.first.id])
preorder12  = Preorder.create([client_id: client12, quantity: 14,  order_date: "10/03/2023", order_status: 'deliverd',    total: 40000, urgent: true,  permission: true, user_id: User.first.id])
preorder13  = Preorder.create([client_id: client13, quantity: 150, order_date: "12/03/2023", order_status: 'pending',     total: 40000, urgent: false, permission: true, user_id: User.first.id])
preorder14  = Preorder.create([client_id: client14, quantity: 116, order_date: "14/06/2023", order_status: 'pending',     total: 40000, urgent: false, permission: true, user_id: User.first.id])
preorder15  = Preorder.create([client_id: client15, quantity: 130, order_date: "15/07/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id])
preorder16  = Preorder.create([client_id: client16, quantity: 140, order_date: "20/08/2023", order_status: 'delivered',   total: 20000, urgent: false, permission: true, user_id: User.first.id])
preorder17  = Preorder.create([client_id: client17, quantity: 210, order_date: "06/08/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id])
preorder18  = Preorder.create([client_id: client18, quantity: 410, order_date: "08/08/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id])
preorder19  = Preorder.create([client_id: client19, quantity: 510, order_date: "10/09/2023", order_status: 'delivered',   total: 20000, urgent: false, permission: true, user_id: User.first.id])
preorder20  = Preorder.create([client_id: client13, quantity: 710, order_date: "14/09/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id])
preorder21  = Preorder.create([client_id: client15, quantity: 310, order_date: "15/09/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id])
preorder22  = Preorder.create([client_id: client16, quantity: 610, order_date: "19/09/2023", order_status: 'pending',     total: 30000, urgent: false, permission: true, user_id: User.first.id])
preorder23  = Preorder.create([client_id: client16, quantity: 710, order_date: "14/10/2023", order_status: 'pending',     total: 30000, urgent: false, permission: true, user_id: User.first.id])
preorder24  = Preorder.create([client_id: client12, quantity: 110, order_date: "17/10/2023", order_status: 'pending',     total: 30000, urgent: false, permission: true, user_id: User.first.id])
preorder25  = Preorder.create([client_id: client5,  quantity: 210, order_date: "04/10/2023", order_status: 'pending',     total: 30000, urgent: false, permission: true, user_id: User.first.id])
preorder26  = Preorder.create([client_id: client7,  quantity: 710, order_date: "16/11/2023", order_status: 'pending',     total: 30000, urgent: false, permission: true, user_id: User.first.id])
preorder27  = Preorder.create([client_id: client3,  quantity: 410, order_date: "17/11/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id])
preorder28  = Preorder.create([client_id: client9,  quantity: 510, order_date: "12/11/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id])
preorder29  = Preorder.create([client_id: client8,  quantity: 440, order_date: "10/12/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id])
preorder30  = Preorder.create([client_id: client4,  quantity: 410, order_date: "19/12/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id])


#preorder Item
preorder_items1     =   PreorderItem.create([preorder_id: preorder1,    stock_id: 1,    quantity: 110])
preorder_items2     =   PreorderItem.create([preorder_id: preorder2,    stock_id: 12,   quantity: 110])
preorder_items3     =   PreorderItem.create([preorder_id: preorder3,    stock_id: 14,   quantity: 140])
preorder_items4     =   PreorderItem.create([preorder_id: preorder4,    stock_id: 15,   quantity: 160])
preorder_items5     =   PreorderItem.create([preorder_id: preorder5,    stock_id: 16,   quantity: 170])
preorder_items6     =   PreorderItem.create([preorder_id: preorder6,    stock_id: 4,    quantity: 210])
preorder_items7     =   PreorderItem.create([preorder_id: preorder7,    stock_id: 9,    quantity: 410])
preorder_items8     =   PreorderItem.create([preorder_id: preorder8,    stock_id: 1,    quantity: 150])
preorder_items9     =   PreorderItem.create([preorder_id: preorder9,    stock_id: 19,   quantity: 160])
preorder_items10    =   PreorderItem.create([preorder_id: preorder10,   stock_id: 2,    quantity: 117])
preorder_items11    =   PreorderItem.create([preorder_id: preorder11,   stock_id: 7,    quantity: 130])
preorder_items12    =   PreorderItem.create([preorder_id: preorder12,   stock_id: 8,    quantity: 14 ]) 
preorder_items13    =   PreorderItem.create([preorder_id: preorder13,   stock_id: 9,    quantity: 150])
preorder_items14    =   PreorderItem.create([preorder_id: preorder14,   stock_id: 1,    quantity: 116])
preorder_items15    =   PreorderItem.create([preorder_id: preorder15,   stock_id: 8,    quantity: 130])
preorder_items16    =   PreorderItem.create([preorder_id: preorder16,   stock_id: 12,   quantity: 140])
preorder_items17    =   PreorderItem.create([preorder_id: preorder17,   stock_id: 4,    quantity: 210])
preorder_items18    =   PreorderItem.create([preorder_id: preorder18,   stock_id: 7,    quantity: 410])
preorder_items19    =   PreorderItem.create([preorder_id: preorder19,   stock_id: 2,    quantity: 510])
preorder_items20    =   PreorderItem.create([preorder_id: preorder20,   stock_id: 9,    quantity: 710])
preorder_items21    =   PreorderItem.create([preorder_id: preorder21,   stock_id: 2,    quantity: 310])
preorder_items22    =   PreorderItem.create([preorder_id: preorder22,   stock_id: 4,    quantity: 610])
preorder_items23    =   PreorderItem.create([preorder_id: preorder23,   stock_id: 6,    quantity: 710])
preorder_items24    =   PreorderItem.create([preorder_id: preorder24,   stock_id: 4,    quantity: 110])
preorder_items25    =   PreorderItem.create([preorder_id: preorder25,   stock_id: 5,    quantity: 210])
preorder_items26    =   PreorderItem.create([preorder_id: preorder26,   stock_id: 9,    quantity: 710])
preorder_items27    =   PreorderItem.create([preorder_id: preorder27,   stock_id: 16,   quantity: 410])
preorder_items28    =   PreorderItem.create([preorder_id: preorder28,   stock_id: 17,   quantity: 510])
preorder_items29    =   PreorderItem.create([preorder_id: preorder29,   stock_id: 19,   quantity: 440])
preorder_items30    =   PreorderItem.create([preorder_id: preorder30,   stock_id: 14,   quantity: 410])
preorder_items31    =   PreorderItem.create([preorder_id: preorder25,   stock_id: 18,   quantity: 210])
preorder_items32    =   PreorderItem.create([preorder_id: preorder1,    stock_id: 19,   quantity: 110])
preorder_items33    =   PreorderItem.create([preorder_id: preorder7,    stock_id: 20,   quantity: 410])
preorder_items34    =   PreorderItem.create([preorder_id: preorder28,   stock_id: 14,   quantity: 410])
preorder_items35    =   PreorderItem.create([preorder_id: preorder21,   stock_id: 15,   quantity: 510])
preorder_items36    =   PreorderItem.create([preorder_id: preorder22,   stock_id: 1,    quantity: 610])
preorder_items37    =   PreorderItem.create([preorder_id: preorder6,    stock_id: 6,    quantity: 210])
preorder_items38    =   PreorderItem.create([preorder_id: preorder9,    stock_id: 8,    quantity: 160])
preorder_items39    =   PreorderItem.create([preorder_id: preorder11,   stock_id: 9,    quantity: 130])
preorder_items40    =   PreorderItem.create([preorder_id: preorder29,   stock_id: 12,   quantity: 440])

#Delivery
delivery1   =   Delivery.create([preorder_id: preorder1,    truck_id: truck1,  distance: 40,   delivery_date: "1/03/2023"])
delivery2   =   Delivery.create([preorder_id: preorder2,    truck_id: truck1,  distance: 40,   delivery_date: "14/03/2023"])
delivery3   =   Delivery.create([preorder_id: preorder3,    truck_id: truck1,  distance: 50,   delivery_date: "13/03/2023"])
delivery4   =   Delivery.create([preorder_id: preorder4,    truck_id: truck1,  distance: 70,   delivery_date: "10/05/2023"])
delivery5   =   Delivery.create([preorder_id: preorder5,    truck_id: truck1,  distance: 80,   delivery_date: "11/06/2023"])
delivery6   =   Delivery.create([preorder_id: preorder6,    truck_id: truck2,  distance: 90,   delivery_date: "07/07/2023"])
delivery7   =   Delivery.create([preorder_id: preorder7,    truck_id: truck2,  distance: 10,   delivery_date: "18/08/2023"])
delivery8   =   Delivery.create([preorder_id: preorder8,    truck_id: truck2,  distance: 70,   delivery_date: "19/07/2023"])
delivery9   =   Delivery.create([preorder_id: preorder9,    truck_id: truck2,  distance: 90,   delivery_date: "11/12/2023"])
delivery10  =   Delivery.create([preorder_id: preorder10,   truck_id: truck2,  distance: 80,   delivery_date: "12/11/2023"])
delivery11  =   Delivery.create([preorder_id: preorder11,   truck_id: truck3,  distance: 10,   delivery_date: "19/04/2023"])
delivery12  =   Delivery.create([preorder_id: preorder12,   truck_id: truck3,  distance: 20,   delivery_date: "18/01/2023"])
delivery13  =   Delivery.create([preorder_id: preorder13,   truck_id: truck3,  distance: 40,   delivery_date: "17/04/2023"])
delivery14  =   Delivery.create([preorder_id: preorder14,   truck_id: truck3,  distance: 50,   delivery_date: "19/04/2023"])
delivery15  =   Delivery.create([preorder_id: preorder15,   truck_id: truck3,  distance: 70,   delivery_date: "17/08/2023"])
delivery16  =   Delivery.create([preorder_id: preorder16,   truck_id: truck4,  distance: 80,   delivery_date: "15/09/2023"])
delivery17  =   Delivery.create([preorder_id: preorder17,   truck_id: truck4,  distance: 60,   delivery_date: "15/09/2023"])
delivery18  =   Delivery.create([preorder_id: preorder18,   truck_id: truck4,  distance: 20,   delivery_date: "8/01/2023"])
delivery19  =   Delivery.create([preorder_id: preorder19,   truck_id: truck4,  distance: 40,   delivery_date: "9/03/2023"])
delivery20  =   Delivery.create([preorder_id: preorder20,   truck_id: truck4,  distance: 60,   delivery_date: "1/04/2023"])
delivery21  =   Delivery.create([preorder_id: preorder21,   truck_id: truck4,  distance: 70,   delivery_date: "1/05/2023"])
delivery22  =   Delivery.create([preorder_id: preorder22,   truck_id: truck5,  distance: 20,   delivery_date: "15/06/2023"])
delivery23  =   Delivery.create([preorder_id: preorder23,   truck_id: truck5,  distance: 10,   delivery_date: "16/07/2023"])
delivery24  =   Delivery.create([preorder_id: preorder24,   truck_id: truck5,  distance: 40,   delivery_date: "19/08/2023"])
delivery25  =   Delivery.create([preorder_id: preorder25,   truck_id: truck5,  distance: 60,   delivery_date: "23/01/2023"])
delivery26  =   Delivery.create([preorder_id: preorder26,   truck_id: truck5,  distance: 70,   delivery_date: "27/02/2023"])
delivery27  =   Delivery.create([preorder_id: preorder27,   truck_id: truck1,  distance: 30,   delivery_date: "29/12/2023"])
delivery28  =   Delivery.create([preorder_id: preorder28,   truck_id: truck2,  distance: 40,   delivery_date: "21/03/2023"])
delivery29  =   Delivery.create([preorder_id: preorder29,   truck_id: truck2,  distance: 70,   delivery_date: "27/07/2023"])
delivery30  =   Delivery.create([preorder_id: preorder30,   truck_id: truck2,  distance: 30,   delivery_date: "21/09/2023"])
