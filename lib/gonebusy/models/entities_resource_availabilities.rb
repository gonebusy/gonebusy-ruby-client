# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class EntitiesResourceAvailabilities < BaseModel
    # array of available date and time slots
    # @return [List of EntitiesSlots]
    attr_accessor :available_slots

    # id of Resource
    # @return [Integer]
    attr_accessor :id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["available_slots"] = "available_slots"
        @hash["id"] = "id"
      end
      @hash
    end

    def initialize(available_slots = nil,
                   id = nil)
      @available_slots = available_slots
      @id = id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        # Parameter is an array, so we need to iterate through it
        available_slots = nil
        if hash["available_slots"] != nil
          available_slots = Array.new
          hash["available_slots"].each{|structure| available_slots << (EntitiesSlots.from_hash(structure) if structure)}
        end
        id = hash["id"]

        # Create object from extracted values
        EntitiesResourceAvailabilities.new(available_slots,
                                           id)
      end
    end
  end
end
