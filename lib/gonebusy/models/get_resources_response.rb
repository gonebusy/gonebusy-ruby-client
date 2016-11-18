# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetResourcesResponse < BaseModel
    # TODO: Write general description for this method
    # @return [List of EntitiesResourceResponse]
    attr_accessor :resources

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["resources"] = "resources"
      end
      @hash
    end

    def initialize(resources = nil)
      @resources = resources
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        # Parameter is an array, so we need to iterate through it
        resources = nil
        if hash["resources"] != nil
          resources = Array.new
          hash["resources"].each{|structure| resources << (EntitiesResourceResponse.from_hash(structure) if structure)}
        end

        # Create object from extracted values
        GetResourcesResponse.new(resources)
      end
    end
  end
end
