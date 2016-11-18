# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetCategoriesResponse < BaseModel
    # TODO: Write general description for this method
    # @return [List of EntitiesCategoryResponse]
    attr_accessor :categories

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["categories"] = "categories"
      end
      @hash
    end

    def initialize(categories = nil)
      @categories = categories
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        # Parameter is an array, so we need to iterate through it
        categories = nil
        if hash["categories"] != nil
          categories = Array.new
          hash["categories"].each{|structure| categories << (EntitiesCategoryResponse.from_hash(structure) if structure)}
        end

        # Create object from extracted values
        GetCategoriesResponse.new(categories)
      end
    end
  end
end
