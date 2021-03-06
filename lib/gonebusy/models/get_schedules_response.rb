# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetSchedulesResponse < BaseModel
    # TODO: Write general description for this method
    # @return [List of EntitiesScheduleResponse]
    attr_accessor :schedules

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["schedules"] = "schedules"
      end
      @_hash
    end

    def initialize(schedules = nil)
      @schedules = schedules
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      # Parameter is an array, so we need to iterate through it
      schedules = nil
      if hash['schedules'] != nil
        schedules = Array.new
        hash['schedules'].each{|structure| schedules << (EntitiesScheduleResponse.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      GetSchedulesResponse.new(schedules)
    end
  end
end
