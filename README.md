[![Gem Version](https://badge.fury.io/rb/gonebusy-ruby-client.svg)](https://badge.fury.io/rb/gonebusy-ruby-client)

## Getting started

## Sandbox

We have a Sandbox environment to play with!

Just use [sandbox.gonebusy.com](https://sandbox.gonebusy.com) instead of where you see beta.gonebusy.com referenced, including where to create an account to retrieve your API Key.

The Sandbox environment is completely separate from the Live site - that includes meaning your Sandbox API Key will not work in the Live environment.

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build gonebusy.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install gonebusy-0.1.2.gem ```

## How to Use

### API Key

If testing with Sandbox, [Signup/Logon](https://sandbox.gonebusy.com/login) at https://sandbox.gonebusy.com/login.

If using Production site, [Signup/Logon](https://beta.gonebusy.com/login) at https://beta.gonebusy.com/login.

Once logged in, navigate to the API Key page and request an API key.

### Initialization/Authentication

In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| authorization | Set Authorization to "Token _your API key_" |


API client can be initialized as following.

```ruby
# Configuration parameters and credentials
authorization = "Token <your API key>"; # Set Authorization to "Token <your API key>"

client = Gonebusy::GonebusyClient.new(authorization)
```

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Class Reference

### <a name="list_of_controllers"></a>List of Controllers

* [BookingsController](#bookings_controller)
* [UsersController](#users_controller)
* [ServicesController](#services_controller)
* [SearchController](#search_controller)
* [SchedulesController](#schedules_controller)
* [ResourcesController](#resources_controller)
* [PricingModelsController](#pricing_models_controller)
* [CategoriesController](#categories_controller)

### <a name="bookings_controller"></a>![Class: ](http://apidocs.io/img/class.png ".BookingsController") BookingsController

#### Get singleton instance

The singleton instance of the ``` BookingsController ``` class can be accessed from the API Client.

```ruby
bookings = client.bookings
```

#### <a name="create_booking"></a>![Method: ](http://apidocs.io/img/method.png ".BookingsController.create_booking") create_booking

> Create a Booking with params


```ruby
def create_booking(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| create_booking_body |  ``` Required ```  | the content of the request |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

create_booking_body = CreateBookingBody.new
collect['create_booking_body'] = create_booking_body


result = bookings.create_booking(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="get_bookings"></a>![Method: ](http://apidocs.io/img/method.png ".BookingsController.get_bookings") get_bookings

> Return list of Bookings.


```ruby
def get_bookings(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| page |  ``` Optional ```  ``` DefaultValue ```  | Page offset to fetch. |
| per_page |  ``` Optional ```  ``` DefaultValue ```  | Number of results to return per page. |
| states |  ``` Optional ```  | Comma-separated list of Booking states to retrieve only Bookings in those states.  Leave blank to retrieve all Bookings. |
| user_id |  ``` Optional ```  | Retrieve Bookings for Resources/Services owned by this User Id.  You must be authorized to manage this User Id. |
| booker_id |  ``` Optional ```  | Retrieve Bookings make by Booker Id. |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

page = 1
collect['page'] = page

per_page = 10
collect['per_page'] = per_page

states = 'states'
collect['states'] = states

user_id = 86
collect['user_id'] = user_id


result = bookings.get_bookings(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



#### <a name="cancel_booking_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".BookingsController.cancel_booking_by_id") cancel_booking_by_id

> Cancel a Booking by id


```ruby
def cancel_booking_by_id(authorization,
                             id,
                             cancel_recurring = nil,
                             date = nil,
                             end_date = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |
| cancel_recurring |  ``` Optional ```  | When a recurring booking, one of: ['instance', 'all', 'infinite'] |
| date |  ``` Optional ```  | If a recurring booking, the date of an instance to cancel.  Several formats are supported: '2014-10-31', 'October 31, 2014' |
| end_date |  ``` Optional ```  | If recurring, cancel up to :end_date or leave blank for infinite booking.  Several formats are supported: '2014-10-31', 'October 31, 2014'. |


#### Example Usage

```ruby
authorization = 'Authorization'
id = 'id'
cancel_recurring = 'cancel_recurring'
date = DateTime.now
end_date = DateTime.now

result = bookings.cancel_booking_by_id(authorization, id, cancel_recurring, date, end_date)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



#### <a name="update_booking_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".BookingsController.update_booking_by_id") update_booking_by_id

> Update a Booking by id


```ruby
def update_booking_by_id(authorization,
                             id,
                             update_booking_by_id_body = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |
| update_booking_by_id_body |  ``` Optional ```  | the content of the request |


#### Example Usage

```ruby
authorization = 'Authorization'
id = 'id'
update_booking_by_id_body = UpdateBookingByIdBody.new

result = bookings.update_booking_by_id(authorization, id, update_booking_by_id_body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="get_booking_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".BookingsController.get_booking_by_id") get_booking_by_id

> Return a Booking by id.


```ruby
def get_booking_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id


result = bookings.get_booking_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



[Back to List of Controllers](#list_of_controllers)

### <a name="users_controller"></a>![Class: ](http://apidocs.io/img/class.png ".UsersController") UsersController

#### Get singleton instance

The singleton instance of the ``` UsersController ``` class can be accessed from the API Client.

```ruby
users = client.users
```

#### <a name="update_user_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".UsersController.update_user_by_id") update_user_by_id

> Update a User by id, with params.


```ruby
def update_user_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |
| update_user_by_id_body |  ``` Required ```  | the content of the request |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id

update_user_by_id_body = UpdateUserByIdBody.new
collect['update_user_by_id_body'] = update_user_by_id_body


result = users.update_user_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="get_user_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".UsersController.get_user_by_id") get_user_by_id

> Return a User by id.


```ruby
def get_user_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id


result = users.get_user_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



#### <a name="get_users_pros"></a>![Method: ](http://apidocs.io/img/method.png ".UsersController.get_users_pros") get_users_pros

> Return list of active Pro Users.


```ruby
def get_users_pros(authorization); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |


#### Example Usage

```ruby
authorization = 'Authorization'

result = users.get_users_pros(authorization)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 500 | Unexpected error |



#### <a name="create_user"></a>![Method: ](http://apidocs.io/img/method.png ".UsersController.create_user") create_user

> Create a User


```ruby
def create_user(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| create_user_body |  ``` Required ```  | the content of the request |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

create_user_body = CreateUserBody.new
collect['create_user_body'] = create_user_body


result = users.create_user(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="get_users"></a>![Method: ](http://apidocs.io/img/method.png ".UsersController.get_users") get_users

> Return all Users that your account has access to.  Includes your own User as well as any Users for which you are the Account Manager.


```ruby
def get_users(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| page |  ``` Optional ```  ``` DefaultValue ```  | Page offset to fetch. |
| per_page |  ``` Optional ```  ``` DefaultValue ```  | Number of results to return per page. |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

page = 1
collect['page'] = page

per_page = 10
collect['per_page'] = per_page


result = users.get_users(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 500 | Unexpected error |



[Back to List of Controllers](#list_of_controllers)

### <a name="services_controller"></a>![Class: ](http://apidocs.io/img/class.png ".ServicesController") ServicesController

#### Get singleton instance

The singleton instance of the ``` ServicesController ``` class can be accessed from the API Client.

```ruby
services = client.services
```

#### <a name="delete_service_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".ServicesController.delete_service_by_id") delete_service_by_id

> Delete a Service by id


```ruby
def delete_service_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id


result = services.delete_service_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



#### <a name="update_service_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".ServicesController.update_service_by_id") update_service_by_id

> Update a Service with params.


```ruby
def update_service_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |
| update_service_by_id_body |  ``` Required ```  | the content of the request |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id

update_service_by_id_body = UpdateServiceByIdBody.new
collect['update_service_by_id_body'] = update_service_by_id_body


result = services.update_service_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="get_service_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".ServicesController.get_service_by_id") get_service_by_id

> Return a Service by id.


```ruby
def get_service_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id


result = services.get_service_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



#### <a name="create_service"></a>![Method: ](http://apidocs.io/img/method.png ".ServicesController.create_service") create_service

> Create a Service with params.


```ruby
def create_service(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| create_service_body |  ``` Required ```  | the content of the request |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

create_service_body = CreateServiceBody.new
collect['create_service_body'] = create_service_body


result = services.create_service(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="get_services"></a>![Method: ](http://apidocs.io/img/method.png ".ServicesController.get_services") get_services

> Return list of Services.


```ruby
def get_services(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| page |  ``` Optional ```  ``` DefaultValue ```  | Page offset to fetch. |
| per_page |  ``` Optional ```  ``` DefaultValue ```  | Number of results to return per page. |
| user_id |  ``` Optional ```  | Retrieve Services provided by the User specified by Id.  You must be authorized to manage this User Id. |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

page = 1
collect['page'] = page

per_page = 10
collect['per_page'] = per_page

user_id = 45
collect['user_id'] = user_id


result = services.get_services(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



#### <a name="get_service_available_slots_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".ServicesController.get_service_available_slots_by_id") get_service_available_slots_by_id

> Return available times for a Service.


```ruby
def get_service_available_slots_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |
| date |  ``` Optional ```  | Date to check for availability.  Either this field or a date range employing start_date and end_date must be supplied.  If date is provided, start_date/end_date are ignored.  Several formats are supported: '2014-10-31', 'October 31, 2014'. |
| end_date |  ``` Optional ```  | End Date of a range to check for availability.  If supplied, date must not be supplied and start_date must be supplied.  Several formats are supported: '2014-10-31', 'October 31, 2014'. |
| start_date |  ``` Optional ```  | Start Date of a range to check for availability.  If supplied, date must not be supplied and end_date must be supplied.  Several formats are supported: '2014-10-31', 'October 31, 2014'. |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id

date = DateTime.now
collect['date'] = date

end_date = DateTime.now
collect['end_date'] = end_date

start_date = DateTime.now
collect['start_date'] = start_date


result = services.get_service_available_slots_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



[Back to List of Controllers](#list_of_controllers)

### <a name="search_controller"></a>![Class: ](http://apidocs.io/img/class.png ".SearchController") SearchController

#### Get singleton instance

The singleton instance of the ``` SearchController ``` class can be accessed from the API Client.

```ruby
search = client.search
```

#### <a name="search_query"></a>![Method: ](http://apidocs.io/img/method.png ".SearchController.search_query") search_query

> Search for Providers and Provided Services.


```ruby
def search_query(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

query = 'query'
collect['query'] = query


result = search.search_query(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 500 | Unexpected error |



[Back to List of Controllers](#list_of_controllers)

### <a name="schedules_controller"></a>![Class: ](http://apidocs.io/img/class.png ".SchedulesController") SchedulesController

#### Get singleton instance

The singleton instance of the ``` SchedulesController ``` class can be accessed from the API Client.

```ruby
schedules = client.schedules
```

#### <a name="delete_schedule_time_window_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".SchedulesController.delete_schedule_time_window_by_id") delete_schedule_time_window_by_id

> Delete a TimeWindow from a Schedule


```ruby
def delete_schedule_time_window_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |
| time_window_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id

time_window_id = 'time_window_id'
collect['time_window_id'] = time_window_id


result = schedules.delete_schedule_time_window_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



#### <a name="create_schedule_time_window"></a>![Method: ](http://apidocs.io/img/method.png ".SchedulesController.create_schedule_time_window") create_schedule_time_window

> Add a TimeWindow to a Schedule.


```ruby
def create_schedule_time_window(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| create_schedule_time_window_body |  ``` Required ```  | the content of the request |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

create_schedule_time_window_body = CreateScheduleTimeWindowBody.new
collect['create_schedule_time_window_body'] = create_schedule_time_window_body

id = 'id'
collect['id'] = id


result = schedules.create_schedule_time_window(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="delete_schedule_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".SchedulesController.delete_schedule_by_id") delete_schedule_by_id

> Delete a Schedule


```ruby
def delete_schedule_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id


result = schedules.delete_schedule_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



#### <a name="get_schedule_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".SchedulesController.get_schedule_by_id") get_schedule_by_id

> Return a Schedule by id.


```ruby
def get_schedule_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id


result = schedules.get_schedule_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 410 | Gone |
| 500 | Unexpected error |



#### <a name="create_schedule"></a>![Method: ](http://apidocs.io/img/method.png ".SchedulesController.create_schedule") create_schedule

> Create a Schedule with params.


```ruby
def create_schedule(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| create_schedule_body |  ``` Required ```  | the content of the request |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

create_schedule_body = CreateScheduleBody.new
collect['create_schedule_body'] = create_schedule_body


result = schedules.create_schedule(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="update_schedule_time_window_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".SchedulesController.update_schedule_time_window_by_id") update_schedule_time_window_by_id

> Update a TimeWindow for a Schedule.


```ruby
def update_schedule_time_window_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |
| time_window_id |  ``` Required ```  | TODO: Add a parameter description |
| update_schedule_time_window_by_id_body |  ``` Required ```  | the content of the request |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id

time_window_id = 'time_window_id'
collect['time_window_id'] = time_window_id

update_schedule_time_window_by_id_body = UpdateScheduleTimeWindowByIdBody.new
collect['update_schedule_time_window_by_id_body'] = update_schedule_time_window_by_id_body


result = schedules.update_schedule_time_window_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="get_schedules"></a>![Method: ](http://apidocs.io/img/method.png ".SchedulesController.get_schedules") get_schedules

> Return all Schedules that your account has access to.  Includes Schedules for your own User as well as any Users for which you are the Account Manager.


```ruby
def get_schedules(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| page |  ``` Optional ```  ``` DefaultValue ```  | Page offset to fetch. |
| per_page |  ``` Optional ```  ``` DefaultValue ```  | Number of results to return per page. |
| user_id |  ``` Optional ```  | Retrieve Schedules owned only by this User Id.  You must be authorized to manage this User Id. |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

page = 1
collect['page'] = page

per_page = 10
collect['per_page'] = per_page

user_id = 45
collect['user_id'] = user_id


result = schedules.get_schedules(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



[Back to List of Controllers](#list_of_controllers)

### <a name="resources_controller"></a>![Class: ](http://apidocs.io/img/class.png ".ResourcesController") ResourcesController

#### Get singleton instance

The singleton instance of the ``` ResourcesController ``` class can be accessed from the API Client.

```ruby
resources = client.resources
```

#### <a name="delete_resource_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".ResourcesController.delete_resource_by_id") delete_resource_by_id

> Delete a Resource by id


```ruby
def delete_resource_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id


result = resources.delete_resource_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



#### <a name="update_resource_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".ResourcesController.update_resource_by_id") update_resource_by_id

> Update a Resource by id, with params


```ruby
def update_resource_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |
| update_resource_by_id_body |  ``` Required ```  | the content of the request |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id

update_resource_by_id_body = UpdateResourceByIdBody.new
collect['update_resource_by_id_body'] = update_resource_by_id_body


result = resources.update_resource_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="get_resource_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".ResourcesController.get_resource_by_id") get_resource_by_id

> Return a Resource by id.


```ruby
def get_resource_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id


result = resources.get_resource_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



#### <a name="get_resource_things"></a>![Method: ](http://apidocs.io/img/method.png ".ResourcesController.get_resource_things") get_resource_things

> Return all Resource Things.


```ruby
def get_resource_things(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| page |  ``` Optional ```  ``` DefaultValue ```  | Page offset to fetch. |
| per_page |  ``` Optional ```  ``` DefaultValue ```  | Number of results to return per page. |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

page = 1
collect['page'] = page

per_page = 10
collect['per_page'] = per_page


result = resources.get_resource_things(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 500 | Unexpected error |



#### <a name="create_resource"></a>![Method: ](http://apidocs.io/img/method.png ".ResourcesController.create_resource") create_resource

> Create a Resource with params


```ruby
def create_resource(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| create_resource_body |  ``` Required ```  | the content of the request |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

create_resource_body = CreateResourceBody.new
collect['create_resource_body'] = create_resource_body


result = resources.create_resource(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="get_resources"></a>![Method: ](http://apidocs.io/img/method.png ".ResourcesController.get_resources") get_resources

> Return list of Resources.


```ruby
def get_resources(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| page |  ``` Optional ```  ``` DefaultValue ```  | Page offset to fetch. |
| per_page |  ``` Optional ```  ``` DefaultValue ```  | Number of results to return per page. |
| user_id |  ``` Optional ```  | Retrieve Resources owned only by this User Id.  You must be authorized to manage this User Id. |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

page = 1
collect['page'] = page

per_page = 10
collect['per_page'] = per_page

user_id = 45
collect['user_id'] = user_id


result = resources.get_resources(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



[Back to List of Controllers](#list_of_controllers)

### <a name="pricing_models_controller"></a>![Class: ](http://apidocs.io/img/class.png ".PricingModelsController") PricingModelsController

#### Get singleton instance

The singleton instance of the ``` PricingModelsController ``` class can be accessed from the API Client.

```ruby
pricingModels = client.pricing_models
```

#### <a name="update_pricing_model_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".PricingModelsController.update_pricing_model_by_id") update_pricing_model_by_id

> Update a PricingModel by id, with params


```ruby
def update_pricing_model_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |
| update_pricing_model_by_id_body |  ``` Required ```  | the content of the request |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id

update_pricing_model_by_id_body = UpdatePricingModelByIdBody.new
collect['update_pricing_model_by_id_body'] = update_pricing_model_by_id_body


result = pricingModels.update_pricing_model_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="get_pricing_model_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".PricingModelsController.get_pricing_model_by_id") get_pricing_model_by_id

> Return a PricingModel by id.


```ruby
def get_pricing_model_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id


result = pricingModels.get_pricing_model_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



#### <a name="create_pricing_model"></a>![Method: ](http://apidocs.io/img/method.png ".PricingModelsController.create_pricing_model") create_pricing_model

> Create a PricingModel with params


```ruby
def create_pricing_model(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| create_pricing_model_body |  ``` Required ```  | the content of the request |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

create_pricing_model_body = CreatePricingModelBody.new
collect['create_pricing_model_body'] = create_pricing_model_body


result = pricingModels.create_pricing_model(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="get_pricing_models"></a>![Method: ](http://apidocs.io/img/method.png ".PricingModelsController.get_pricing_models") get_pricing_models

> Return list of PricingModels.


```ruby
def get_pricing_models(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| page |  ``` Optional ```  ``` DefaultValue ```  | Page offset to fetch. |
| per_page |  ``` Optional ```  ``` DefaultValue ```  | Number of results to return per page. |
| user_id |  ``` Optional ```  | Retrieve PricingModels owned only by this User Id.  You must be authorized to manage this User Id. |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

page = 1
collect['page'] = page

per_page = 10
collect['per_page'] = per_page

user_id = 136
collect['user_id'] = user_id


result = pricingModels.get_pricing_models(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



[Back to List of Controllers](#list_of_controllers)

### <a name="categories_controller"></a>![Class: ](http://apidocs.io/img/class.png ".CategoriesController") CategoriesController

#### Get singleton instance

The singleton instance of the ``` CategoriesController ``` class can be accessed from the API Client.

```ruby
categories = client.categories
```

#### <a name="get_category_by_id"></a>![Method: ](http://apidocs.io/img/method.png ".CategoriesController.get_category_by_id") get_category_by_id

> Return a Category by id.


```ruby
def get_category_by_id(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

id = 'id'
collect['id'] = id


result = categories.get_category_by_id(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Unexpected error |



#### <a name="create_category"></a>![Method: ](http://apidocs.io/img/method.png ".CategoriesController.create_category") create_category

> Create a Category


```ruby
def create_category(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| create_category_body |  ``` Required ```  | the content of the request |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

create_category_body = CreateCategoryBody.new
collect['create_category_body'] = create_category_body


result = categories.create_category(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 422 | Unprocessable Entity |
| 500 | Unexpected error |



#### <a name="get_categories"></a>![Method: ](http://apidocs.io/img/method.png ".CategoriesController.get_categories") get_categories

> Return list of Categories.


```ruby
def get_categories(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| authorization |  ``` Required ```  | A valid API key, in the format 'Token API_KEY' |
| page |  ``` Optional ```  ``` DefaultValue ```  | Page offset to fetch. |
| per_page |  ``` Optional ```  ``` DefaultValue ```  | Number of results to return per page. |
| user_id |  ``` Optional ```  | Retrieve Categories of all services provided by this User Id.  You must be authorized to manage this User Id. |


#### Example Usage

```ruby
collect = Hash.new

authorization = 'Authorization'
collect['authorization'] = authorization

page = 1
collect['page'] = page

per_page = 10
collect['per_page'] = per_page

user_id = 136
collect['user_id'] = user_id


result = categories.get_categories(collect)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request |
| 401 | Unauthorized/Missing Token |
| 403 | Forbidden |
| 500 | Unexpected error |


[Back to List of Controllers](#list_of_controllers)
