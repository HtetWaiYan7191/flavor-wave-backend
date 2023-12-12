# README

## API DOCUMENTATION

### <i>Base URL: https://flavor-wave.onrender.com/ </i>

<hr/>
- User Login( <i><b>/login</b></i> )

    method: POST
    end-point: /login

  To authenticate and obtain a JWT token, make a '<b>POST</b>' request to <b>/login</b>. Include the user credentials (email, password) in the request body as a JSON object. The API will respond with the JWT token that you can use for authenticated requests.

<hr/>
- User Logout( <i><b>/logout</b></i> )

    method: DELETE
    end-point: /logout

  To log out, make a '<b>DELETE</b>' request to <b>/logout</b>.

<hr/>
- List All Preorders( <i><b>/api/v1/preorders</b></i> )

    method: GET
    end-point: api/v1/preorders

  To retrieve a list of all preorders, make a <b>GET</b> request to /api/v1/preorders. The API will respond with a JSON array containing preorder details.

<hr/>
- Show Preorder Details( <i><b>/api/v1/preorders/:id</b></i> )

    method: GET
    end-point: api/v1/preorders/:id

  To view details of a specific preorder, make a <b>GET</b> request to /api/v1/preorders/:id. Replace :id with the ID of the preorder you want to view. The API will respond with a JSON object containing detailed information about the preorder.

<hr/>
- Create a New Preorder( <i><b>/api/v1/preorders</b></i> )

    method: POST
    end-point: api/v1/preorders

  To add a new Preorder, make a '<b>POST</b>' request to /api/v1/preorders . Include the Preorder details in the request body as a JSON object. The API will respond with the newly created Preorder details.

<hr/>
- Update Preorder Details( <i><b>/api/v1/preorders/:id</b></i> )

    method: PATCH
    end-point: api/v1/preorders/:id

  To view details of a specific preorder, make a '<b>PATCH</b>' request to /api/v1/preorders/:id. Replace :id with the ID of the preorder you want to update. The API will respond with a JSON object containing detailed information about the preorder.

<hr/>
- Search Preorder by Client Name( <i><b>/api/v1/preorders?search=clientname</b></i> )

    method: GET
    end-point: api/v1/preorders?search=:clientname

  To get a specific preorder, make a '<b>GET</b>' request to api/v1/preorders?search=:clientname. Replace :clientname with the name of the client name you want to view. The API will respond with a JSON object containing detailed information about the preorder.

<hr/>
- Filter Preorder by Order Status( <i><b>/api/v1/preorders/filter/status?order_status=:status</b></i> )

    method: GET
    end-point: /api/v1/preorders/filter/status?order_status=:status

  To get a specific preorder, make a '<b>GET</b>' request to /api/v1/preorders/filter/status?order_status=:status. Replace :status with the name of the status you want to view. The API will respond with a JSON object containing detailed information about the preorder.

<hr/>
- Filter Preorder by Order Date( <i><b>/api/v1/preorders/filter/date?order_date=:date</b></i> )

    method: GET
    end-point: /api/v1/preorders/filter/date?order_date=:date

  To get a specific preorder, make a '<b>GET</b>' request to /api/v1/preorders/filter/date?order_date=:date. Replace :date with the date you want to view. The API will respond with a JSON object containing detailed information about the preorder.

<hr/>
- List All Clients( <i><b>/api/v1/clients</b></i> )

    method: GET
    end-point: api/v1/clients

  To retrieve a list of all clients, make a <b>GET</b> request to /api/v1/clients. The API will respond with a JSON array containing client details.

<hr/>
- List All Stocks( <i><b>/api/v1/stocks</b></i> )

    method: GET
    end-point: api/v1/stocks

  To retrieve a list of all stocks, make a <b>GET</b> request to /api/v1/stocks. The API will respond with a JSON array containing stocks details.

<hr/>
- List All Stock Details( <i><b>/api/v1/stocks/:id/stock_details</b></i> )

    method: GET
    end-point: /api/v1/stocks/:id/stock_details

  To retrieve a list of stock details with a given stock id, make a <b>GET</b> request to /api/v1/stocks/:id/stock_details. The API will respond with a JSON array containing stocks details.

<hr/>
- List All Trucks( <i><b>/api/v1/trucks</b></i> )

    method: GET
    end-point: /api/v1/trucks

  To retrieve a list of trucks, make a <b>GET</b> request to /api/v1/trucks. The API will respond with a JSON array containing stocks details.

<hr/>
- List All Deliveries( <i><b>/api/v1/deliveries</b></i> )

    method: GET
    end-point: /api/v1/deliveries

  To retrieve a list of deliveries with a given stock id, make a <b>GET</b> request to /api/v1/deliveries. The API will respond with a JSON array containing a list of deliveries.

<hr/>
- Show Delivery Details( <i><b>/api/v1/deliveries/:id</b></i> )

    method: GET
    end-point: /api/v1/deliveries/:id

  To view details of a specific delivery, make a <b>GET</b> request to /api/v1/deliveries/:id. Replace :id with the ID of the delivery you want to view. The API will respond with a JSON object containing detailed information about the delivery.

<hr/>
- Create a New Delivery( <i><b>/api/v1/deliveries</b></i> )

    method: POST
    end-point: /api/v1/deliveries

  To add a new delivery, make a '<b>POST</b>' request to /api/v1/deliveries . Include the Deliveries details in the request body as a JSON object. The API will respond with the newly created delivery details.


<br>