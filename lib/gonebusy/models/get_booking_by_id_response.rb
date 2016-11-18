# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetBookingByIdResponse < BaseModel
    # TODO: Write general description for this method
    # @return [EntitiesBookingResponse]
    attr_accessor :booking

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["booking"] = "booking"
      end
      @hash
    end

    def initialize(booking = nil)
      @booking = booking
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        booking = EntitiesBookingResponse.from_hash(hash["booking"]) if hash["booking"]

        # Create object from extracted values
        GetBookingByIdResponse.new(booking)
      end
    end
  end
end
