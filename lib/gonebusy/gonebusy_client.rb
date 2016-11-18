# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GonebusyClient
    # Singleton access to bookings controller
    # @return [BookingsController] Returns the controller instance
    def bookings
      BookingsController.instance
    end

    # Singleton access to users controller
    # @return [UsersController] Returns the controller instance
    def users
      UsersController.instance
    end

    # Singleton access to services controller
    # @return [ServicesController] Returns the controller instance
    def services
      ServicesController.instance
    end

    # Singleton access to search controller
    # @return [SearchController] Returns the controller instance
    def search
      SearchController.instance
    end

    # Singleton access to schedules controller
    # @return [SchedulesController] Returns the controller instance
    def schedules
      SchedulesController.instance
    end

    # Singleton access to resources controller
    # @return [ResourcesController] Returns the controller instance
    def resources
      ResourcesController.instance
    end

    # Singleton access to pricing_models controller
    # @return [PricingModelsController] Returns the controller instance
    def pricing_models
      PricingModelsController.instance
    end

    # Singleton access to categories controller
    # @return [CategoriesController] Returns the controller instance
    def categories
      CategoriesController.instance
    end

    # Initializer with authentication and configuration parameters
    def initialize(authorization: 'Token <your API key>')
      Configuration.authorization = authorization if authorization
    end
  end
end
