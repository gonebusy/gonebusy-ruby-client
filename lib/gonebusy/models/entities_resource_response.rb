# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class EntitiesResourceResponse < BaseModel
    # capacity of Resource, if applicable
    # @return [Integer]
    attr_accessor :capacity

    # description of Resource
    # @return [String]
    attr_accessor :description

    # gender of Resource, if applicable
    # @return [Integer]
    attr_accessor :gender

    # id of Resource
    # @return [Integer]
    attr_accessor :id

    # name of Resource
    # @return [String]
    attr_accessor :name

    # id of User owning Resource
    # @return [Integer]
    attr_accessor :owner_id

    # type of Resource
    # @return [String]
    attr_accessor :resource_type

    # type Id of Thing Resource, if applicable
    # @return [Integer]
    attr_accessor :thing_type_id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["capacity"] = "capacity"
        @hash["description"] = "description"
        @hash["gender"] = "gender"
        @hash["id"] = "id"
        @hash["name"] = "name"
        @hash["owner_id"] = "owner_id"
        @hash["resource_type"] = "resource_type"
        @hash["thing_type_id"] = "thing_type_id"
      end
      @hash
    end

    def initialize(capacity = nil,
                   description = nil,
                   gender = nil,
                   id = nil,
                   name = nil,
                   owner_id = nil,
                   resource_type = nil,
                   thing_type_id = nil)
      @capacity = capacity
      @description = description
      @gender = gender
      @id = id
      @name = name
      @owner_id = owner_id
      @resource_type = resource_type
      @thing_type_id = thing_type_id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        capacity = hash["capacity"]
        description = hash["description"]
        gender = hash["gender"]
        id = hash["id"]
        name = hash["name"]
        owner_id = hash["owner_id"]
        resource_type = hash["resource_type"]
        thing_type_id = hash["thing_type_id"]

        # Create object from extracted values
        EntitiesResourceResponse.new(capacity,
                                     description,
                                     gender,
                                     id,
                                     name,
                                     owner_id,
                                     resource_type,
                                     thing_type_id)
      end
    end
  end
end
