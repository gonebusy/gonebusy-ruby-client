# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module Gonebusy
  class EntitiesSlots < BaseModel
    # date of availability
    # @return [DateTime]
    attr_accessor :date

    # array of available time slots
    # @return [List of String]
    attr_accessor :slots

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["date"] = "date"
        @hash["slots"] = "slots"
      end
      @hash
    end

    def initialize(date = nil,
                   slots = nil)
      @date = date
      @slots = slots
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        date = DateTime.iso8601(hash["date"]) if hash["date"]
        slots = hash["slots"]

        # Create object from extracted values
        EntitiesSlots.new(date,
                          slots)
      end
    end
  end
end
