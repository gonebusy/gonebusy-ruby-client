# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class EntitiesBookingResponse < BaseModel
    # id of Booking
    # @return [Integer]
    attr_accessor :id

    # id of owner of Booking
    # @return [Integer]
    attr_accessor :owner_id

    # TimeWindow corresponding to Booking
    # @return [EntitiesTimeWindowResponse]
    attr_accessor :time_window

    # user requesting Booking may include a message
    # @return [String]
    attr_accessor :user_message

    # status of Booking
    # @return [String]
    attr_accessor :workflow_state

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["id"] = "id"
        @hash["owner_id"] = "owner_id"
        @hash["time_window"] = "time_window"
        @hash["user_message"] = "user_message"
        @hash["workflow_state"] = "workflow_state"
      end
      @hash
    end

    def initialize(id = nil,
                   owner_id = nil,
                   time_window = nil,
                   user_message = nil,
                   workflow_state = nil)
      @id = id
      @owner_id = owner_id
      @time_window = time_window
      @user_message = user_message
      @workflow_state = workflow_state
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        id = hash["id"]
        owner_id = hash["owner_id"]
        time_window = EntitiesTimeWindowResponse.from_hash(hash["time_window"]) if hash["time_window"]
        user_message = hash["user_message"]
        workflow_state = hash["workflow_state"]

        # Create object from extracted values
        EntitiesBookingResponse.new(id,
                                    owner_id,
                                    time_window,
                                    user_message,
                                    workflow_state)
      end
    end
  end
end
