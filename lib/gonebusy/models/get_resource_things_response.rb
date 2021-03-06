# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetResourceThingsResponse < BaseModel
    # TODO: Write general description for this method
    # @return [List of EntitiesThingTypeResponse]
    attr_accessor :things

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["things"] = "things"
      end
      @_hash
    end

    def initialize(things = nil)
      @things = things
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      # Parameter is an array, so we need to iterate through it
      things = nil
      if hash['things'] != nil
        things = Array.new
        hash['things'].each{|structure| things << (EntitiesThingTypeResponse.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      GetResourceThingsResponse.new(things)
    end
  end
end
