# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class CreateBookingBody < BaseModel
    # Desired date of booking.  Several formats are supported: "2014-10-31", "October 31, 2014"
    # @return [String]
    attr_accessor :date

    # ID of Service being booked
    # @return [Integer]
    attr_accessor :service_id

    # Desired time of booking.  Several formats are supported: '9am', '09:00', '9:00', '0900'
    # @return [String]
    attr_accessor :time

    # Length of time, in minutes, for the desired booking - if Service allows requesting a variable amount of time
    # @return [Integer]
    attr_accessor :duration

    # ID of a Resource to be booked.  If not provided, the first available Resource will be booked.
    # @return [Integer]
    attr_accessor :resource_id

    # Create a booking for this User Id.  You must be authorized to manage this User Id.
    # @return [Integer]
    attr_accessor :user_id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["date"] = "date"
        @hash["service_id"] = "service_id"
        @hash["time"] = "time"
        @hash["duration"] = "duration"
        @hash["resource_id"] = "resource_id"
        @hash["user_id"] = "user_id"
      end
      @hash
    end

    def initialize(date = nil,
                   service_id = nil,
                   time = nil,
                   duration = nil,
                   resource_id = nil,
                   user_id = nil)
      @date = date
      @service_id = service_id
      @time = time
      @duration = duration
      @resource_id = resource_id
      @user_id = user_id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        date = hash["date"]
        service_id = hash["service_id"]
        time = hash["time"]
        duration = hash["duration"]
        resource_id = hash["resource_id"]
        user_id = hash["user_id"]

        # Create object from extracted values
        CreateBookingBody.new(date,
                              service_id,
                              time,
                              duration,
                              resource_id,
                              user_id)
      end
    end
  end
end
