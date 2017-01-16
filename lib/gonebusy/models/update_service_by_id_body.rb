# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class UpdateServiceByIdBody < BaseModel
    # Optional List of comma-separated Category IDs to associate with Service
    # @return [String]
    attr_accessor :categories

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

    # Optional Price Model Id
    # @return [Integer]
    attr_accessor :price_model_id

    # Optional List of comma-separated Resource IDs that will provide this Service, default: API user's resource id
    # @return [String]
    attr_accessor :resources

    # Optional abbreviated Service name
    # @return [String]
    attr_accessor :short_name

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["categories"] = "categories"
        @hash["description"] = "description"
        @hash["duration"] = "duration"
        @hash["max_duration"] = "max_duration"
        @hash["name"] = "name"
        @hash["price_model_id"] = "price_model_id"
        @hash["resources"] = "resources"
        @hash["short_name"] = "short_name"
      end
      @hash
    end

    def initialize(categories = nil,
                   description = nil,
                   duration = nil,
                   max_duration = nil,
                   name = nil,
                   price_model_id = nil,
                   resources = nil,
                   short_name = nil)
      @categories = categories
      @description = description
      @duration = duration
      @max_duration = max_duration
      @name = name
      @price_model_id = price_model_id
      @resources = resources
      @short_name = short_name
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        categories = hash["categories"]
        description = hash["description"]
        duration = hash["duration"]
        max_duration = hash["max_duration"]
        name = hash["name"]
        price_model_id = hash["price_model_id"]
        resources = hash["resources"]
        short_name = hash["short_name"]

        # Create object from extracted values
        UpdateServiceByIdBody.new(categories,
                                  description,
                                  duration,
                                  max_duration,
                                  name,
                                  price_model_id,
                                  resources,
                                  short_name)
      end
    end
  end
end
