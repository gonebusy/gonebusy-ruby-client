# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetBookingsResponse < BaseModel
    # TODO: Write general description for this method
    # @return [List of EntitiesBookingResponse]
    attr_accessor :bookings

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["bookings"] = "bookings"
      end
      @hash
    end

    def initialize(bookings = nil)
      @bookings = bookings
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        # Parameter is an array, so we need to iterate through it
        bookings = nil
        if hash["bookings"] != nil
          bookings = Array.new
          hash["bookings"].each{|structure| bookings << (EntitiesBookingResponse.from_hash(structure) if structure)}
        end

        # Create object from extracted values
        GetBookingsResponse.new(bookings)
      end
    end
  end
end
