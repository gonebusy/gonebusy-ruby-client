# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class CreateServiceBody < BaseModel
    # Service Description
    # @return [String]
    attr_accessor :description

    # Duration of the Service in minutes
    # @return [Integer]
    attr_accessor :duration

    # Max duration of the Service in minutes
    # @return [Integer]
    attr_accessor :max_duration

    # Service Name
    # @return [String]
    attr_accessor :name

    # Optional List of comma-separated Category IDs to associate with Service
    # @return [String]
    attr_accessor :categories

    # Optional Price Model Id
    # @return [Integer]
    attr_accessor :price_model_id

    # Optional List of comma-separated Resource IDs that will provide this Service, default: API user's resource id
    # @return [String]
    attr_accessor :resources

    # Optional abbreviated Service name
    # @return [String]
    attr_accessor :short_name

    # ID of User to create Service for.  You must be authorized to manage this User Id.
    # @return [Integer]
    attr_accessor :user_id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["description"] = "description"
        @hash["duration"] = "duration"
        @hash["max_duration"] = "max_duration"
        @hash["name"] = "name"
        @hash["categories"] = "categories"
        @hash["price_model_id"] = "price_model_id"
        @hash["resources"] = "resources"
        @hash["short_name"] = "short_name"
        @hash["user_id"] = "user_id"
      end
      @hash
    end

    def initialize(description = nil,
                   duration = nil,
                   max_duration = nil,
                   name = nil,
                   categories = nil,
                   price_model_id = nil,
                   resources = nil,
                   short_name = nil,
                   user_id = nil)
      @description = description
      @duration = duration
      @max_duration = max_duration
      @name = name
      @categories = categories
      @price_model_id = price_model_id
      @resources = resources
      @short_name = short_name
      @user_id = user_id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        description = hash["description"]
        duration = hash["duration"]
        max_duration = hash["max_duration"]
        name = hash["name"]
        categories = hash["categories"]
        price_model_id = hash["price_model_id"]
        resources = hash["resources"]
        short_name = hash["short_name"]
        user_id = hash["user_id"]

        # Create object from extracted values
        CreateServiceBody.new(description,
                              duration,
                              max_duration,
                              name,
                              categories,
                              price_model_id,
                              resources,
                              short_name,
                              user_id)
      end
    end
  end
end
