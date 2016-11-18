# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class UpdateResourceByIdBody < BaseModel
    # Optional Capacity
    # @return [Integer]
    attr_accessor :capacity

    # Optional Description
    # @return [String]
    attr_accessor :description

    # Optional Gender
    # @return [GenderEnum]
    attr_accessor :gender

    # Resource Name
    # @return [String]
    attr_accessor :name

    # When Resource is a Thing, the type Id
    # @return [Integer]
    attr_accessor :thing_type_id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["capacity"] = "capacity"
        @hash["description"] = "description"
        @hash["gender"] = "gender"
        @hash["name"] = "name"
        @hash["thing_type_id"] = "thing_type_id"
      end
      @hash
    end

    def initialize(capacity = nil,
                   description = nil,
                   gender = nil,
                   name = nil,
                   thing_type_id = nil)
      @capacity = capacity
      @description = description
      @gender = gender
      @name = name
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
        name = hash["name"]
        thing_type_id = hash["thing_type_id"]

        # Create object from extracted values
        UpdateResourceByIdBody.new(capacity,
                                   description,
                                   gender,
                                   name,
                                   thing_type_id)
      end
    end
  end
end
