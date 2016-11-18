# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetServiceAvailableSlotsByIdResponse < BaseModel
    # TODO: Write general description for this method
    # @return [EntitiesAvailabilityResponse]
    attr_accessor :service

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["service"] = "service"
      end
      @hash
    end

    def initialize(service = nil)
      @service = service
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        service = EntitiesAvailabilityResponse.from_hash(hash["service"]) if hash["service"]

        # Create object from extracted values
        GetServiceAvailableSlotsByIdResponse.new(service)
      end
    end
  end
end
