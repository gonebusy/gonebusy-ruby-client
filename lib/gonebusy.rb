# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 03/04/2016
require 'openssl'
require 'json'
require 'unirest'

# APIMATIC Helper Files
require 'gonebusy/api_helper.rb'
require 'gonebusy/api_exception.rb'
require 'gonebusy/configuration.rb'

# Controllers
require 'gonebusy/controllers/bookings_controller.rb'
require 'gonebusy/controllers/categories_controller.rb'
require 'gonebusy/controllers/pricing_models_controller.rb'
require 'gonebusy/controllers/resources_controller.rb'
require 'gonebusy/controllers/schedules_controller.rb'
require 'gonebusy/controllers/search_controller.rb'
require 'gonebusy/controllers/services_controller.rb'
require 'gonebusy/controllers/users_controller.rb'

# Models
require 'gonebusy/models/create_booking_body.rb'
require 'gonebusy/models/update_booking_by_id_body.rb'
require 'gonebusy/models/create_category_body.rb'
require 'gonebusy/models/create_pricing_model_body.rb'
require 'gonebusy/models/update_pricing_model_by_id_body.rb'
require 'gonebusy/models/create_resource_body.rb'
require 'gonebusy/models/update_resource_by_id_body.rb'
require 'gonebusy/models/create_schedule_body.rb'
require 'gonebusy/models/create_schedule_time_window_body.rb'
require 'gonebusy/models/update_schedule_time_window_by_id_body.rb'
require 'gonebusy/models/create_service_body.rb'
require 'gonebusy/models/update_service_by_id_body.rb'
require 'gonebusy/models/create_user_body.rb'
require 'gonebusy/models/update_user_by_id_body.rb'
require 'gonebusy/models/register_user_as_pro_body.rb'
