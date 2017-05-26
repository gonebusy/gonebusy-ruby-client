# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetBookingByIdResponse < BaseModel
    # TODO: Write general description for this method
    # @return [EntitiesBookingResponse]
    attr_accessor :booking

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["booking"] = "booking"
      end
      @_hash
    end

    def initialize(booking = nil)
      @booking = booking
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      booking = EntitiesBookingResponse.from_hash(hash['booking']) if hash['booking']

      # Create object from extracted values
      GetBookingByIdResponse.new(booking)
    end
  end
end
