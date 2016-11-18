# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class CreateResourceBody < BaseModel
    # Resource Name
    # @return [String]
    attr_accessor :name

    # Type of Resource
    # @return [String]
    attr_accessor :type

    # Optional Capacity
    # @return [Integer]
    attr_accessor :capacity

    # Optional Description
    # @return [String]
    attr_accessor :description

    # Optional Gender
    # @return [GenderEnum]
    attr_accessor :gender

    # When Resource is a Thing, the type Id
    # @return [Integer]
    attr_accessor :thing_type_id

    # Create a Resource for this User Id.  You must be authorized to manage this User Id.
    # @return [Integer]
    attr_accessor :user_id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["name"] = "name"
        @hash["type"] = "type"
        @hash["capacity"] = "capacity"
        @hash["description"] = "description"
        @hash["gender"] = "gender"
        @hash["thing_type_id"] = "thing_type_id"
        @hash["user_id"] = "user_id"
      end
      @hash
    end

    def initialize(name = nil,
                   type = nil,
                   capacity = nil,
                   description = nil,
                   gender = nil,
                   thing_type_id = nil,
                   user_id = nil)
      @name = name
      @type = type
      @capacity = capacity
      @description = description
      @gender = gender
      @thing_type_id = thing_type_id
      @user_id = user_id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        name = hash["name"]
        type = hash["type"]
        capacity = hash["capacity"]
        description = hash["description"]
        gender = hash["gender"]
        thing_type_id = hash["thing_type_id"]
        user_id = hash["user_id"]

        # Create object from extracted values
        CreateResourceBody.new(name,
                               type,
                               capacity,
                               description,
                               gender,
                               thing_type_id,
                               user_id)
      end
    end
  end
end
