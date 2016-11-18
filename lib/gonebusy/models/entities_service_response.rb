# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class EntitiesServiceResponse < BaseModel
    # array of Category ids Service belongs to
    # @return [List of Integer]
    attr_accessor :categories

    # description of Service
    # @return [String]
    attr_accessor :description

    # length in minutes of Service
    # @return [Integer]
    attr_accessor :duration

    # id of Service
    # @return [Integer]
    attr_accessor :id

    # status of Service
    # @return [Boolean]
    attr_accessor :is_active

    # name of Service
    # @return [String]
    attr_accessor :name

    # id of owner of Service
    # @return [Integer]
    attr_accessor :owner_id

    # id of Pricing Model
    # @return [Integer]
    attr_accessor :price_model_id

    # array of Resource ids offering Service
    # @return [List of Integer]
    attr_accessor :resources

    # abbreviated name for Service
    # @return [String]
    attr_accessor :short_name

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["categories"] = "categories"
        @hash["description"] = "description"
        @hash["duration"] = "duration"
        @hash["id"] = "id"
        @hash["is_active"] = "is_active"
        @hash["name"] = "name"
        @hash["owner_id"] = "owner_id"
        @hash["price_model_id"] = "price_model_id"
        @hash["resources"] = "resources"
        @hash["short_name"] = "short_name"
      end
      @hash
    end

    def initialize(categories = nil,
                   description = nil,
                   duration = nil,
                   id = nil,
                   is_active = nil,
                   name = nil,
                   owner_id = nil,
                   price_model_id = nil,
                   resources = nil,
                   short_name = nil)
      @categories = categories
      @description = description
      @duration = duration
      @id = id
      @is_active = is_active
      @name = name
      @owner_id = owner_id
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
        id = hash["id"]
        is_active = hash["is_active"]
        name = hash["name"]
        owner_id = hash["owner_id"]
        price_model_id = hash["price_model_id"]
        resources = hash["resources"]
        short_name = hash["short_name"]

        # Create object from extracted values
        EntitiesServiceResponse.new(categories,
                                    description,
                                    duration,
                                    id,
                                    is_active,
                                    name,
                                    owner_id,
                                    price_model_id,
                                    resources,
                                    short_name)
      end
    end
  end
end
