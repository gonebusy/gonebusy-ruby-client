# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class EntitiesScheduleResponse < BaseModel
    # id of Schedule
    # @return [Integer]
    attr_accessor :id

    # id of owner of Schedule
    # @return [Integer]
    attr_accessor :owner_id

    # id of Resource
    # @return [Integer]
    attr_accessor :resource_id

    # id of Service
    # @return [Integer]
    attr_accessor :service_id

    # array of TimeWindows making up Schedule
    # @return [List of EntitiesTimeWindowResponse]
    attr_accessor :time_windows

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["id"] = "id"
        @hash["owner_id"] = "owner_id"
        @hash["resource_id"] = "resource_id"
        @hash["service_id"] = "service_id"
        @hash["time_windows"] = "time_windows"
      end
      @hash
    end

    def initialize(id = nil,
                   owner_id = nil,
                   resource_id = nil,
                   service_id = nil,
                   time_windows = nil)
      @id = id
      @owner_id = owner_id
      @resource_id = resource_id
      @service_id = service_id
      @time_windows = time_windows
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        id = hash["id"]
        owner_id = hash["owner_id"]
        resource_id = hash["resource_id"]
        service_id = hash["service_id"]
        # Parameter is an array, so we need to iterate through it
        time_windows = nil
        if hash["time_windows"] != nil
          time_windows = Array.new
          hash["time_windows"].each{|structure| time_windows << (EntitiesTimeWindowResponse.from_hash(structure) if structure)}
        end

        # Create object from extracted values
        EntitiesScheduleResponse.new(id,
                                     owner_id,
                                     resource_id,
                                     service_id,
                                     time_windows)
      end
    end
  end
end
