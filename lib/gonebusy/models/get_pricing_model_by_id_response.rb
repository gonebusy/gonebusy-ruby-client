# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetPricingModelByIdResponse < BaseModel
    # TODO: Write general description for this method
    # @return [EntitiesPricingModelResponse]
    attr_accessor :pricing_models

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["pricing_models"] = "pricing_models"
      end
      @hash
    end

    def initialize(pricing_models = nil)
      @pricing_models = pricing_models
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        pricing_models = EntitiesPricingModelResponse.from_hash(hash["pricing_models"]) if hash["pricing_models"]

        # Create object from extracted values
        GetPricingModelByIdResponse.new(pricing_models)
      end
    end
  end
end
