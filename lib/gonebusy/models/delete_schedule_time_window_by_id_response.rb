# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class DeleteScheduleTimeWindowByIdResponse < BaseModel
    # TODO: Write general description for this method
    # @return [EntitiesScheduleResponse]
    attr_accessor :schedule

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["schedule"] = "schedule"
      end
      @hash
    end

    def initialize(schedule = nil)
      @schedule = schedule
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        schedule = EntitiesScheduleResponse.from_hash(hash["schedule"]) if hash["schedule"]

        # Create object from extracted values
        DeleteScheduleTimeWindowByIdResponse.new(schedule)
      end
    end
  end
end
