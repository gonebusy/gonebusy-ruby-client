# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetServicesResponse < BaseModel
    # TODO: Write general description for this method
    # @return [List of EntitiesServiceResponse]
    attr_accessor :services

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["services"] = "services"
      end
      @hash
    end

    def initialize(services = nil)
      @services = services
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        # Parameter is an array, so we need to iterate through it
        services = nil
        if hash["services"] != nil
          services = Array.new
          hash["services"].each{|structure| services << (EntitiesServiceResponse.from_hash(structure) if structure)}
        end

        # Create object from extracted values
        GetServicesResponse.new(services)
      end
    end
  end
end
