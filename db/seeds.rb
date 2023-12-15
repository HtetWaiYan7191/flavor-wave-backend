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
client1  = Client.create( name: 'Culinary Delights Consortium', region: 'Mandalay',   phone: '09876567898', address: '45st street, Mandalay')
client2  = Client.create( name: 'TastyHarvest Ventures',        region: 'Yangon',     phone: '09876734212', address: 'Bogyoke Road, Yangon')
client3  = Client.create( name: 'DivinePalate Trading Co',      region: 'Yangon',     phone: '09878909876',  address: 'Inya Lake Avenue, Yangon')
client4  = Client.create( name: 'Epicurean Express Ltd',       region: 'Ayeyarwady', phone: '09867907532',  address: 'Strand Road, Ayeyarwady')
client5  = Client.create( name: 'Savory Delights Inc',          region: 'Yangon',     phone: '09456765423', address: 'Merchant Street, Yangon')
client6  = Client.create( name: 'FlavorCraft Distributors',     region: 'Yangon',     phone: '09158642907',  address: 'Bogyoke Road, Yangon')
client7  = Client.create( name: 'Epicurean Haven.Ltd',          region: 'Yangon',     phone: '09546789432', address: 'Sule Pagoda Road, Yangon')
client8  = Client.create( name: 'Culinary Heights Corporation', region: 'Sagaing',    phone: '09148734067', address: 'Mandalay Street, Sagaing')
client9  = Client.create( name: 'FlavorCraft Distributors',     region: 'Yangon',     phone: '09909756446', address: 'Bogyoke Road, Yangon')
client10 = Client.create( name: 'Delectable Morsels Co.',       region: 'Yangon',     phone: '09176588907', address: '8th Avenue, Yangon')
client11 = Client.create( name: 'Gastronomy Emporium Ltd',      region: 'Yangon',     phone: '09165488790',   address: 'Anawrahta Road, Yangon')
client12 = Client.create( name: 'Epicurean Haven.Ltd',          region: 'Yangon',     phone: '09546789432', address: 'Sule Pagoda Road, Yangon')                                                                                                
client13 = Client.create( name: 'Plate Pleasures Holdings',     region: 'Yangon',     phone: '09221478659',  address: 'Kandawgyi Park, Yangon' )                                                                                                  
client14 = Client.create( name: 'TasteMasters International',   region: 'Bago',       phone: '09356865546',   address: 'Shwethalyaung Street, Bago')
client15 = Client.create( name: 'TasteMasters International',   region: 'Bago',       phone: '09463375466',   address: 'Shwethalyaung Street, Bago')
client16 = Client.create( name: 'Delectable Morsels Co.',       region: 'Yangon',     phone: '09135436577', address: '8th Avenue, Yangon')
client17 = Client.create( name: 'Gourmet Elegance Enterpries',  region: 'Yangon',     phone: '09143766435',   address: 'Merchant Street, Yangon')
client18 = Client.create( name: 'Gastronomy Emporium Ltd',      region: 'Yangon',     phone: '09765766566',   address:  'Anawrahta Road, Yangon')
client19 = Client.create( name: 'Palate Pleasures Holdings',    region: 'Yangon',     phone: '091375544245', address: 'Kandawgyi Park, Yangon')

# stock seeding
stock1  = Stock.create( name: 'Burmese Bliss',                  quantity: 30,    unit_price: 2000);
stock2  = Stock.create( name: 'Golden Sunshine Tea',            quantity: 40,    unit_price: 5000);
stock3  = Stock.create( name: 'Mango Tango Delight',            quantity: 20,    unit_price: 1200);
stock4  = Stock.create( name: 'Rangoon Rosewater Elixir',       quantity: 30,    unit_price: 3000);
stock5  = Stock.create( name: 'Emerald Green Chai',             quantity: 10,    unit_price: 2000);
stock6  = Stock.create( name: 'Citrus Fusion Fizz',             quantity: 30,    unit_price: 6000);
stock7  = Stock.create( name: 'Coconut Cream Dream',            quantity: 70,    unit_price: 1500);
stock8  = Stock.create( name: 'Jasmine Serenade Soda',          quantity: 30,    unit_price: 5000);
stock9  = Stock.create( name: 'Papaya Paradise Punch',          quantity: 50,    unit_price: 3000);
stock10 = Stock.create( name: 'Lychee Lullaby',                 quantity: 30,    unit_price: 3400);
stock11 = Stock.create( name: 'Tropical Twilight Nectar',       quantity: 20,    unit_price: 5000);
stock12 = Stock.create( name: 'Orchid Oasis Euphoria',          quantity: 30,    unit_price: 6000);
stock13 = Stock.create( name: 'Starfruit Sparkling Sorbet',     quantity: 50,    unit_price: 4500)
stock14 = Stock.create( name: 'Ginger Zing Zest',               quantity: 30,    unit_price: 7000)
stock15 = Stock.create( name: "Lush Lemongrass Infusion",       quantity: 30,    unit_price: 6000)
stock16 = Stock.create( name: 'Ruby Red Guava Gusto',           quantity: 30,    unit_price: 7000)
stock17 = Stock.create( name: 'Blueberry Burst Breeze',         quantity: 40,    unit_price: 4000)
stock18 = Stock.create( name: 'Pineapple Pizzazz Quencher',     quantity: 20,    unit_price: 2000)
stock19 = Stock.create( name: 'Passionfruit Pomegranate Bliss', quantity: 30,    unit_price: 1000)
stock20 = Stock.create( name: 'Exotic Cucumber Limeade',        quantity: 50,    unit_price: 3000)

#truck seeding
truck1 = Truck.create(license: '2C/9800',driver: 'Ko Aung Kyaw',capacity: 200,available: true)
truck2 = Truck.create(license: '4E/2400',driver: 'U Hla Maung',capacity: 1000,available: false)
truck3 = Truck.create(license: '5T/3100',driver: 'Ko Myo Thant',capacity: 600,available: true)
truck4 = Truck.create(license: '1Y/1100',driver: 'U Myint Aung',capacity: 800,available: true)
truck5 = Truck.create(license: '3W/200',driver: 'Ko Kyaw Zaw',capacity: 400,available: false)

#restock seeding
restock1 = Restock.create(restock_date: "01/12/2005")
restock2 = Restock.create(restock_date: "12/02/2020")
restock3 = Restock.create(restock_date: "12/16/2024")


#restock details
restockDetails1  = RestockDetail.create(quantity: 30, expiry_date: "23/05/2023", restock_id: restock1.id, stock_id: stock1.id)
restockDetails2  = RestockDetail.create(quantity: 40, expiry_date: "21/4/2023",  restock_id: restock2.id, stock_id: stock2.id)
restockDetails3  = RestockDetail.create(quantity: 20, expiry_date: "21/2/2023",  restock_id: restock3.id, stock_id: stock3.id)
restockDetails4  = RestockDetail.create(quantity: 30, expiry_date: "23/5/2023",  restock_id: restock1.id, stock_id: stock4.id)
restockDetails5  = RestockDetail.create(quantity: 10, expiry_date: "23/05/2023", restock_id: restock1.id, stock_id: stock5.id)
restockDetails6  = RestockDetail.create(quantity: 30, expiry_date: "23/05/2023", restock_id: restock1.id, stock_id: stock6.id)
restockDetails7  = RestockDetail.create(quantity: 70, expiry_date: "23/05/2023", restock_id: restock1.id, stock_id: stock7.id)
restockDetails8  = RestockDetail.create(quantity: 30, expiry_date: "23/05/2023", restock_id: restock1.id, stock_id: stock8.id)
restockDetails9  = RestockDetail.create(quantity: 50, expiry_date: "23/05/2023", restock_id: restock1.id, stock_id: stock9.id)
restockDetails10 = RestockDetail.create(quantity: 30, expiry_date: "23/05/2023", restock_id: restock1.id, stock_id: stock10.id)
restockDetails11 = RestockDetail.create(quantity: 20, expiry_date: "23/05/2023", restock_id: restock2.id, stock_id: stock11.id)
restockDetails12 = RestockDetail.create(quantity: 30, expiry_date: "23/05/2023", restock_id: restock2.id, stock_id: stock12.id)
restockDetails13 = RestockDetail.create(quantity: 50, expiry_date: "23/05/2023", restock_id: restock2.id, stock_id: stock13.id)
restockDetails14 = RestockDetail.create(quantity: 30, expiry_date: "23/05/2023", restock_id: restock2.id, stock_id: stock14.id)
restockDetails15 = RestockDetail.create(quantity: 30, expiry_date: "23/05/2023", restock_id: restock2.id, stock_id: stock15.id)
restockDetails16 = RestockDetail.create(quantity: 30, expiry_date: "23/05/2023", restock_id: restock2.id, stock_id: stock16.id)
restockDetails17 = RestockDetail.create(quantity: 40, expiry_date: "23/05/2023", restock_id: restock3.id, stock_id: stock17.id)
restockDetails18 = RestockDetail.create(quantity: 20, expiry_date: "23/05/2023", restock_id: restock3.id, stock_id: stock18.id)
restockDetails19 = RestockDetail.create(quantity: 30, expiry_date: "23/05/2023", restock_id: restock3.id, stock_id: stock19.id)
restockDetails20 = RestockDetail.create(quantity: 50, expiry_date: "23/05/2023", restock_id: restock3.id, stock_id: stock20.id)
restockDetails21 = RestockDetail.create(quantity: 50, expiry_date: "23/05/2023", restock_id: restock3.id, stock_id: stock20.id)
restockDetails22 = RestockDetail.create(quantity: 50, expiry_date: "23/05/2023", restock_id: restock3.id, stock_id: stock20.id)
restockDetails23 = RestockDetail.create(quantity: 50, expiry_date: "23/05/2023", restock_id: restock3.id, stock_id: stock20.id)
restockDetails24 = RestockDetail.create(quantity: 30, expiry_date: "23/05/2023", restock_id: restock2.id, stock_id: stock14.id)
restockDetails25 = RestockDetail.create(quantity: 30, expiry_date: "23/06/2023", restock_id: restock2.id, stock_id: stock2.id)
restockDetails26 = RestockDetail.create(quantity: 30, expiry_date: "23/06/2023", restock_id: restock1.id, stock_id: stock1.id)
restockDetails27 = RestockDetail.create(quantity: 30, expiry_date: "23/06/2023", restock_id: restock1.id, stock_id: stock8.id)
restockDetails28 = RestockDetail.create(quantity: 30, expiry_date: "23/06/2023", restock_id: restock2.id, stock_id: stock14.id)

#Stock Details
stock_details1  = StockDetail.create(restock_id: restockDetails1.id, quantity: 30,   expiry_date: '15/02/2023',stock_id: stock1.id);
stock_details2  = StockDetail.create(restock_id: restockDetails2.id, quantity: 40,   expiry_date: '13/08/2023',stock_id: stock2.id);
stock_details3  = StockDetail.create(restock_id: restockDetails3.id, quantity: 20,   expiry_date: '12/07/2023',stock_id: stock3.id);
stock_details4  = StockDetail.create(restock_id: restockDetails4.id, quantity: 30,   expiry_date: '02/10/2023',stock_id: stock4.id);
stock_details5  = StockDetail.create(restock_id: restockDetails5.id, quantity: 10,   expiry_date: '12/07/2023',stock_id: stock5.id);
stock_details6  = StockDetail.create(restock_id: restockDetails6.id, quantity: 30,   expiry_date: '12/09/2023',stock_id: stock6.id);
stock_details7  = StockDetail.create(restock_id: restockDetails7.id, quantity: 70,   expiry_date: '11/12/2023',stock_id: stock7.id);
stock_details8  = StockDetail.create(restock_id: restockDetails8.id, quantity: 30,   expiry_date: '28/2/2023' ,stock_id: stock8.id);
stock_details9  = StockDetail.create(restock_id: restockDetails9.id, quantity: 50,   expiry_date: '5/12/2023' ,stock_id: stock9.id);
stock_details10 = StockDetail.create(restock_id: restockDetails10.id, quantity: 30,   expiry_date: '25/05/2023',stock_id: stock10.id);
stock_details11 = StockDetail.create(restock_id: restockDetails11.id, quantity: 20,   expiry_date: '2/06/2023' ,stock_id: stock11.id);
stock_details12 = StockDetail.create(restock_id: restockDetails12.id, quantity: 30,   expiry_date: '1/03/2023' ,stock_id: stock12.id);
stock_details13 = StockDetail.create(restock_id: restockDetails13.id, quantity: 50,   expiry_date: '12/04/2023',stock_id: stock13.id);
stock_details14 = StockDetail.create(restock_id: restockDetails14.id, quantity: 30,   expiry_date: '5/03/2023' ,stock_id: stock14.id);
stock_details15 = StockDetail.create(restock_id: restockDetails15.id, quantity: 30,   expiry_date: '5/12/2023' ,stock_id: stock15.id);
stock_details16 = StockDetail.create(restock_id: restockDetails16.id, quantity: 30,   expiry_date: '15/1/2023' ,stock_id: stock16.id);
stock_details17 = StockDetail.create(restock_id: restockDetails17.id, quantity: 40,   expiry_date: '16/06/2023',stock_id: stock17.id);
stock_details18 = StockDetail.create(restock_id: restockDetails18.id, quantity: 20,   expiry_date: '17/04/2023',stock_id: stock18.id);
stock_details19 = StockDetail.create(restock_id: restockDetails19.id, quantity: 30,   expiry_date: '18/07/2023',stock_id: stock19.id);
stock_details20 = StockDetail.create(restock_id: restockDetails20.id, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock20.id);
stock_details21 = StockDetail.create(restock_id: restockDetails21.id, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock20.id);
stock_details22 = StockDetail.create(restock_id: restockDetails22.id, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock20.id);
stock_details23 = StockDetail.create(restock_id: restockDetails23.id, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock20.id);
stock_details24 = StockDetail.create(restock_id: restockDetails24.id, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock14.id);
stock_details25 = StockDetail.create(restock_id: restockDetails25.id, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock2.id);
stock_details26 = StockDetail.create(restock_id: restockDetails26.id, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock1.id);
stock_details27 = StockDetail.create(restock_id: restockDetails27.id, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock8.id);
stock_details28 = StockDetail.create(restock_id: restockDetails28.id, quantity: 50,   expiry_date: '12/03/2023',stock_id: stock14.id);

#preorder
preorder1   = Preorder.create(client_id: client1.id,  quantity: 110, order_date: "14/01/2023", order_status: 'pending',     total: 15000, urgent: true,  permission: true, user_id: User.first.id)
preorder2   = Preorder.create(client_id: client2.id,  quantity: 110, order_date: "10/01/2023", order_status: 'pending',     total: 15000, urgent: true,  permission: true, user_id: User.first.id) 
preorder3   = Preorder.create(client_id: client3.id,  quantity: 140, order_date: "01/01/2023", order_status: 'pending',     total: 15000, urgent: true,  permission: true, user_id: User.first.id)
preorder4   = Preorder.create(client_id: client4.id,  quantity: 160, order_date: "05/01/2023", order_status: 'pending',     total: 50000, urgent: true,  permission: false, user_id: User.first.id)   
preorder5   = Preorder.create(client_id: client5.id,  quantity: 170, order_date: "02/01/2023", order_status: 'pending',     total: 50000, urgent: false, permission: false, user_id: User.first.id)   
preorder6   = Preorder.create(client_id: client6.id,  quantity: 210, order_date: "07/01/2023", order_status: 'pending',     total: 50000, urgent: false, permission: false, user_id: User.first.id)
preorder7   = Preorder.create(client_id: client7.id,  quantity: 410, order_date: "14/02/2023", order_status: 'pending',     total: 50000, urgent: false, permission: false, user_id: User.first.id)
preorder8   = Preorder.create(client_id: client8.id,  quantity: 150, order_date: "05/02/2023", order_status: 'pending',     total: 15000, urgent: false, permission: false, user_id: User.first.id)
preorder9   = Preorder.create(client_id: client9.id,  quantity: 160, order_date: "23/02/2023", order_status: 'pending',     total: 20000, urgent: false, permission: false, user_id: User.first.id)
preorder10  = Preorder.create(client_id: client10.id, quantity: 117, order_date: "21/02/2023", order_status: 'deliverd',    total: 20000, urgent: false, permission: false, user_id: User.first.id)  
preorder11  = Preorder.create(client_id: client11.id, quantity: 130, order_date: "01/02/2023", order_status: 'pending',     total: 40000, urgent: true,  permission: true, user_id: User.first.id)
preorder12  = Preorder.create(client_id: client12.id, quantity: 14,  order_date: "10/03/2023", order_status: 'deliverd',    total: 40000, urgent: true,  permission: true, user_id: User.first.id)
preorder13  = Preorder.create(client_id: client13.id, quantity: 150, order_date: "12/03/2023", order_status: 'pending',     total: 40000, urgent: false, permission: true, user_id: User.first.id)
preorder14  = Preorder.create(client_id: client14.id, quantity: 116, order_date: "14/06/2023", order_status: 'pending',     total: 40000, urgent: false, permission: true, user_id: User.first.id)
preorder15  = Preorder.create(client_id: client15.id, quantity: 130, order_date: "15/07/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id)
preorder16  = Preorder.create(client_id: client16.id, quantity: 140, order_date: "20/08/2023", order_status: 'delivered',   total: 20000, urgent: false, permission: true, user_id: User.first.id)
preorder17  = Preorder.create(client_id: client17.id, quantity: 210, order_date: "06/08/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id)
preorder18  = Preorder.create(client_id: client18.id, quantity: 410, order_date: "08/08/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id)
preorder19  = Preorder.create(client_id: client19.id, quantity: 510, order_date: "10/09/2023", order_status: 'delivered',   total: 20000, urgent: false, permission: true, user_id: User.first.id)
preorder20  = Preorder.create(client_id: client13.id, quantity: 710, order_date: "14/09/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id)
preorder21  = Preorder.create(client_id: client15.id, quantity: 310, order_date: "15/09/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id)
preorder22  = Preorder.create(client_id: client16.id, quantity: 610, order_date: "19/09/2023", order_status: 'pending',     total: 30000, urgent: false, permission: true, user_id: User.first.id)
preorder23  = Preorder.create(client_id: client16.id, quantity: 710, order_date: "14/10/2023", order_status: 'pending',     total: 30000, urgent: false, permission: true, user_id: User.first.id)
preorder24  = Preorder.create(client_id: client12.id, quantity: 110, order_date: "17/10/2023", order_status: 'pending',     total: 30000, urgent: false, permission: true, user_id: User.first.id)
preorder25  = Preorder.create(client_id: client5.id,  quantity: 210, order_date: "04/10/2023", order_status: 'pending',     total: 30000, urgent: false, permission: true, user_id: User.first.id)
preorder26  = Preorder.create(client_id: client7.id,  quantity: 710, order_date: "16/11/2023", order_status: 'pending',     total: 30000, urgent: false, permission: true, user_id: User.first.id)
preorder27  = Preorder.create(client_id: client3.id,  quantity: 410, order_date: "17/11/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id)
preorder28  = Preorder.create(client_id: client9.id,  quantity: 510, order_date: "12/11/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id)
preorder29  = Preorder.create(client_id: client8.id,  quantity: 440, order_date: "10/12/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id)
preorder30  = Preorder.create(client_id: client4.id,  quantity: 410, order_date: "19/12/2023", order_status: 'pending',     total: 20000, urgent: false, permission: true, user_id: User.first.id)


#preorder Item
preorder_items1     =   PreorderItem.create(preorder_id: preorder1.id,    stock_id: 1,    quantity: 110)
preorder_items2     =   PreorderItem.create(preorder_id: preorder2.id,    stock_id: 12,   quantity: 110)
preorder_items3     =   PreorderItem.create(preorder_id: preorder3.id,    stock_id: 14,   quantity: 140)
preorder_items4     =   PreorderItem.create(preorder_id: preorder4.id,    stock_id: 15,   quantity: 160)
preorder_items5     =   PreorderItem.create(preorder_id: preorder5.id,    stock_id: 16,   quantity: 170)
preorder_items6     =   PreorderItem.create(preorder_id: preorder6.id,    stock_id: 4,    quantity: 210)
preorder_items7     =   PreorderItem.create(preorder_id: preorder7.id,    stock_id: 9,    quantity: 410)
preorder_items8     =   PreorderItem.create(preorder_id: preorder8.id,    stock_id: 1,    quantity: 150)
preorder_items9     =   PreorderItem.create(preorder_id: preorder9.id,    stock_id: 19,   quantity: 160)
preorder_items10    =   PreorderItem.create(preorder_id: preorder10.id,   stock_id: 2,    quantity: 117)
preorder_items11    =   PreorderItem.create(preorder_id: preorder11.id,   stock_id: 7,    quantity: 130)
preorder_items12    =   PreorderItem.create(preorder_id: preorder12.id,   stock_id: 8,    quantity: 14 ) 
preorder_items13    =   PreorderItem.create(preorder_id: preorder13.id,   stock_id: 9,    quantity: 150)
preorder_items14    =   PreorderItem.create(preorder_id: preorder14.id,   stock_id: 1,    quantity: 116)
preorder_items15    =   PreorderItem.create(preorder_id: preorder15.id,   stock_id: 8,    quantity: 130)
preorder_items16    =   PreorderItem.create(preorder_id: preorder16.id,   stock_id: 12,   quantity: 140)
preorder_items17    =   PreorderItem.create(preorder_id: preorder17.id,   stock_id: 4,    quantity: 210)
preorder_items18    =   PreorderItem.create(preorder_id: preorder18.id,   stock_id: 7,    quantity: 410)
preorder_items19    =   PreorderItem.create(preorder_id: preorder19.id,   stock_id: 2,    quantity: 510)
preorder_items20    =   PreorderItem.create(preorder_id: preorder20.id,   stock_id: 9,    quantity: 710)
preorder_items21    =   PreorderItem.create(preorder_id: preorder21.id,   stock_id: 2,    quantity: 310)
preorder_items22    =   PreorderItem.create(preorder_id: preorder22.id,   stock_id: 4,    quantity: 610)
preorder_items23    =   PreorderItem.create(preorder_id: preorder23.id,   stock_id: 6,    quantity: 710)
preorder_items24    =   PreorderItem.create(preorder_id: preorder24.id,   stock_id: 4,    quantity: 110)
preorder_items25    =   PreorderItem.create(preorder_id: preorder25.id,   stock_id: 5,    quantity: 210)
preorder_items26    =   PreorderItem.create(preorder_id: preorder26.id,   stock_id: 9,    quantity: 710)
preorder_items27    =   PreorderItem.create(preorder_id: preorder27.id,   stock_id: 16,   quantity: 410)
preorder_items28    =   PreorderItem.create(preorder_id: preorder28.id,   stock_id: 17,   quantity: 510)
preorder_items29    =   PreorderItem.create(preorder_id: preorder29.id,   stock_id: 19,   quantity: 440)
preorder_items30    =   PreorderItem.create(preorder_id: preorder30.id,   stock_id: 14,   quantity: 410)
preorder_items31    =   PreorderItem.create(preorder_id: preorder25.id,   stock_id: 18,   quantity: 210)
preorder_items32    =   PreorderItem.create(preorder_id: preorder1.id,   stock_id: 19,   quantity: 110)
preorder_items33    =   PreorderItem.create(preorder_id: preorder7.id,   stock_id: 20,   quantity: 410)
preorder_items34    =   PreorderItem.create(preorder_id: preorder28.id,   stock_id: 14,   quantity: 410)
preorder_items35    =   PreorderItem.create(preorder_id: preorder21.id,   stock_id: 15,   quantity: 510)
preorder_items36    =   PreorderItem.create(preorder_id: preorder22.id,   stock_id: 1,    quantity: 610)
preorder_items37    =   PreorderItem.create(preorder_id: preorder6.id,    stock_id: 6,    quantity: 210)
preorder_items38    =   PreorderItem.create(preorder_id: preorder9.id,    stock_id: 8,    quantity: 160)
preorder_items39    =   PreorderItem.create(preorder_id: preorder11.id,   stock_id: 9,    quantity: 130)
preorder_items40    =   PreorderItem.create(preorder_id: preorder29.id,   stock_id: 12,   quantity: 440)

#Delivery
delivery1   =   Delivery.create(preorder_id: preorder1.id,   truck_id: truck1.id,  distance: 40,   delivery_date: "1/03/2023")
delivery2   =   Delivery.create(preorder_id: preorder2.id,   truck_id: truck1.id,  distance: 40,   delivery_date: "14/03/2023")
delivery3   =   Delivery.create(preorder_id: preorder3.id,   truck_id: truck1.id,  distance: 50,   delivery_date: "13/03/2023")
delivery4   =   Delivery.create(preorder_id: preorder4.id,   truck_id: truck1.id,  distance: 70,   delivery_date: "10/05/2023")
delivery5   =   Delivery.create(preorder_id: preorder5.id,   truck_id: truck1.id,  distance: 80,   delivery_date: "11/06/2023")
delivery6   =   Delivery.create(preorder_id: preorder6.id,   truck_id: truck2.id,  distance: 90,   delivery_date: "07/07/2023")
delivery7   =   Delivery.create(preorder_id: preorder7.id,   truck_id: truck2.id,  distance: 10,   delivery_date: "18/08/2023")
delivery8   =   Delivery.create(preorder_id: preorder8.id,   truck_id: truck2.id,  distance: 70,   delivery_date: "19/07/2023")
delivery9   =   Delivery.create(preorder_id: preorder9.id,   truck_id: truck2.id,  distance: 90,   delivery_date: "11/12/2023")
delivery10  =   Delivery.create(preorder_id: preorder10.id,   truck_id: truck2.id,  distance: 80,   delivery_date: "12/11/2023")
delivery11  =   Delivery.create(preorder_id: preorder11.id,   truck_id: truck3.id,  distance: 10,   delivery_date: "19/04/2023")
delivery12  =   Delivery.create(preorder_id: preorder12.id,   truck_id: truck3.id,  distance: 20,   delivery_date: "18/01/2023")
delivery13  =   Delivery.create(preorder_id: preorder13.id,   truck_id: truck3.id,  distance: 40,   delivery_date: "17/04/2023")
delivery14  =   Delivery.create(preorder_id: preorder14.id,   truck_id: truck3.id,  distance: 50,   delivery_date: "19/04/2023")
delivery15  =   Delivery.create(preorder_id: preorder15.id,   truck_id: truck3.id,  distance: 70,   delivery_date: "17/08/2023")
delivery16  =   Delivery.create(preorder_id: preorder16.id,   truck_id: truck4.id,  distance: 80,   delivery_date: "15/09/2023")
delivery17  =   Delivery.create(preorder_id: preorder17.id,   truck_id: truck4.id,  distance: 60,   delivery_date: "15/09/2023")
delivery18  =   Delivery.create(preorder_id: preorder18.id,   truck_id: truck4.id,  distance: 20,   delivery_date: "8/01/2023")
delivery19  =   Delivery.create(preorder_id: preorder19.id,   truck_id: truck4.id,  distance: 40,   delivery_date: "9/03/2023")
delivery20  =   Delivery.create(preorder_id: preorder20.id,   truck_id: truck4.id,  distance: 60,   delivery_date: "1/04/2023")
delivery21  =   Delivery.create(preorder_id: preorder21.id,   truck_id: truck4.id,  distance: 70,   delivery_date: "1/05/2023")
delivery22  =   Delivery.create(preorder_id: preorder22.id,   truck_id: truck5.id,  distance: 20,   delivery_date: "15/06/2023")
delivery23  =   Delivery.create(preorder_id: preorder23.id,   truck_id: truck5.id,  distance: 10,   delivery_date: "16/07/2023")
delivery24  =   Delivery.create(preorder_id: preorder24.id,   truck_id: truck5.id,  distance: 40,   delivery_date: "19/08/2023")
delivery25  =   Delivery.create(preorder_id: preorder25.id,   truck_id: truck5.id,  distance: 60,   delivery_date: "23/01/2023")
delivery26  =   Delivery.create(preorder_id: preorder26.id,   truck_id: truck5.id,  distance: 70,   delivery_date: "27/02/2023")
delivery27  =   Delivery.create(preorder_id: preorder27.id,   truck_id: truck1.id,  distance: 30,   delivery_date: "29/12/2023")
delivery28  =   Delivery.create(preorder_id: preorder28.id,   truck_id: truck2.id,  distance: 40,   delivery_date: "21/03/2023")
delivery29  =   Delivery.create(preorder_id: preorder29.id,   truck_id: truck2.id,  distance: 70,   delivery_date: "27/07/2023")
delivery30  =   Delivery.create(preorder_id: preorder30.id,   truck_id: truck2.id,  distance: 30,   delivery_date: "21/09/2023")
