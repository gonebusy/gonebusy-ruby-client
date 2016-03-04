# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 03/04/2016

module Gonebusy
  class CreateBookingBody

    # ID of Service being booked
    # @return [Numeric]
    attr_accessor :service_id

    # Desired date of booking.  Several formats are supported: "2014-10-31", "October 31, 2014"
    # @return [String]
    attr_accessor :date

    # Desired time of booking.  Several formats are supported: '9am', '09:00', '9:00', '0900'
    # @return [String]
    attr_accessor :time

    # ID of a Resource to be booked.  If not provided, the first available Resource will be booked.
    # @return [Numeric]
    attr_accessor :resource_id

    # Length of time, in minutes, for the desired booking - if Service allows requesting a variable amount of time
    # @return [Numeric]
    attr_accessor :duration

    # Create a booking for this User Id.  You must be authorized to manage this User Id.
    # @return [Numeric]
    attr_accessor :user_id

    # Valid API Key for your GoneBusy account
    # (edit in top nav)
    # @return [String]
    attr_accessor :api_key

    
    def method_missing (method_name)
      puts "there's no method called '#{method_name}'"
    end

    # Creates JSON of the curent object  
    def to_json
      hash = self.key_map()
      hash.to_json
    end

    # Defines the key map for json serialization  
    def key_map
      hash = {}
      hash['service_id'] = self.service_id
      hash['date'] = self.date
      hash['time'] = self.time
      hash['resource_id'] = self.resource_id
      hash['duration'] = self.duration
      hash['user_id'] = self.user_id
      hash['api_key'] = self.api_key
      hash
    end

  end
end