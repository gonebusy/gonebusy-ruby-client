# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetPricingModelsResponse < BaseModel
    # TODO: Write general description for this method
    # @return [List of EntitiesPricingModelResponse]
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
        # Parameter is an array, so we need to iterate through it
        pricing_models = nil
        if hash["pricing_models"] != nil
          pricing_models = Array.new
          hash["pricing_models"].each{|structure| pricing_models << (EntitiesPricingModelResponse.from_hash(structure) if structure)}
        end

        # Create object from extracted values
        GetPricingModelsResponse.new(pricing_models)
      end
    end
  end
end
