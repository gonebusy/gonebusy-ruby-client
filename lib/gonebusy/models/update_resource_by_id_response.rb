# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class UpdateResourceByIdResponse < BaseModel
    # TODO: Write general description for this method
    # @return [EntitiesResourceResponse]
    attr_accessor :resource

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["resource"] = "resource"
      end
      @hash
    end

    def initialize(resource = nil)
      @resource = resource
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        resource = EntitiesResourceResponse.from_hash(hash["resource"]) if hash["resource"]

        # Create object from extracted values
        UpdateResourceByIdResponse.new(resource)
      end
    end
  end
end
