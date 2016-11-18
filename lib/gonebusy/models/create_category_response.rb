# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class CreateCategoryResponse < BaseModel
    # TODO: Write general description for this method
    # @return [EntitiesCategoryResponse]
    attr_accessor :category

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["category"] = "category"
      end
      @hash
    end

    def initialize(category = nil)
      @category = category
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        category = EntitiesCategoryResponse.from_hash(hash["category"]) if hash["category"]

        # Create object from extracted values
        CreateCategoryResponse.new(category)
      end
    end
  end
end
