# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetPricingModelByIdResponse < BaseModel
    # TODO: Write general description for this method
    # @return [EntitiesPricingModelResponse]
    attr_accessor :pricing_model

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["pricing_model"] = "pricing_model"
      end
      @hash
    end

    def initialize(pricing_model = nil)
      @pricing_model = pricing_model
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        pricing_model = EntitiesPricingModelResponse.from_hash(hash["pricing_model"]) if hash["pricing_model"]

        # Create object from extracted values
        GetPricingModelByIdResponse.new(pricing_model)
      end
    end
  end
end
