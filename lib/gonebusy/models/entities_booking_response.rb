# This file was automatically generated by APIMATIC v2.0.

module Gonebusy
  class EntitiesBookingResponse < BaseModel
    # id of Booking
    # @return [Integer]
    attr_accessor :id

    # id of owner of Booking
    # @return [Integer]
    attr_accessor :owner_id

    # status of Booking
    # @return [String]
    attr_accessor :workflow_state

    # name of Booking, if any
    # @return [String]
    attr_accessor :name

    # TimeWindow corresponding to Booking
    # @return [EntitiesTimeWindowResponse]
    attr_accessor :time_window

    # id of Resource performing Booking
    # @return [Integer]
    attr_accessor :resource_id

    # id of Service booked
    # @return [Integer]
    attr_accessor :service_id

    # description for Booking, if any
    # @return [String]
    attr_accessor :description

    # external management link for Booking, if any
    # @return [String]
    attr_accessor :external_link

    # video chat or other link associated with Booking, if any
    # @return [String]
    attr_accessor :collaborative_link

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["id"] = "id"
        @_hash["owner_id"] = "owner_id"
        @_hash["workflow_state"] = "workflow_state"
        @_hash["name"] = "name"
        @_hash["time_window"] = "time_window"
        @_hash["resource_id"] = "resource_id"
        @_hash["service_id"] = "service_id"
        @_hash["description"] = "description"
        @_hash["external_link"] = "external_link"
        @_hash["collaborative_link"] = "collaborative_link"
      end
      @_hash
    end

    def initialize(id = nil,
                   owner_id = nil,
                   workflow_state = nil,
                   name = nil,
                   time_window = nil,
                   resource_id = nil,
                   service_id = nil,
                   description = nil,
                   external_link = nil,
                   collaborative_link = nil)
      @id = id
      @owner_id = owner_id
      @workflow_state = workflow_state
      @name = name
      @time_window = time_window
      @resource_id = resource_id
      @service_id = service_id
      @description = description
      @external_link = external_link
      @collaborative_link = collaborative_link
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      id = hash['id']
      owner_id = hash['owner_id']
      workflow_state = hash['workflow_state']
      name = hash['name']
      time_window = EntitiesTimeWindowResponse.from_hash(hash['time_window']) if hash['time_window']
      resource_id = hash['resource_id']
      service_id = hash['service_id']
      description = hash['description']
      external_link = hash['external_link']
      collaborative_link = hash['collaborative_link']

      # Create object from extracted values
      EntitiesBookingResponse.new(id,
                                  owner_id,
                                  workflow_state,
                                  name,
                                  time_window,
                                  resource_id,
                                  service_id,
                                  description,
                                  external_link,
                                  collaborative_link)
    end
  end
end
