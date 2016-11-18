# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class EntitiesThingTypeResponse < BaseModel
    # id of Category
    # @return [Integer]
    attr_accessor :id

    # name of Category
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["id"] = "id"
        @hash["name"] = "name"
      end
      @hash
    end

    def initialize(id = nil,
                   name = nil)
      @id = id
      @name = name
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        id = hash["id"]
        name = hash["name"]

        # Create object from extracted values
        EntitiesThingTypeResponse.new(id,
                                      name)
      end
    end
  end
end
