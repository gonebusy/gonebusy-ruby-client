# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 03/04/2016

module Gonebusy
  class CreateScheduleBody

    # ID of Service being scheduled.
    # @return [Numeric]
    attr_accessor :service_id

    # ID of User to create Schedule for.  You must be authorized to manage this User Id and User must own desired Service and Resource.
    # @return [Numeric]
    attr_accessor :user_id

    # ID of Resource being scheduled.  If not provided and :user_id is not present, the default Resource of the API user is assumed to be the Resource being scheduled.  If not provided and :user_id is present, the default Resource of the User is assumed to be the Resource being Scheduled.
    # @return [Numeric]
    attr_accessor :resource_id

    # Start Date of first TimeWindow.  Several formats are supported: '2014-10-31', 'October 31, 2014'.
    # @return [DateTime]
    attr_accessor :start_date

    # Optional End Date of first TimeWindow, leave blank for infinitely available.  Several formats are supported: '2014-10-31', 'October 31, 2014'.
    # @return [DateTime]
    attr_accessor :end_date

    # Start Time of first TimeWindow.  Several formats are supported: '9am', '09:00', '9:00', '0900'
    # @return [String]
    attr_accessor :start_time

    # End Time of first TimeWindow.  Several formats are supported: '5pm', '17:00', '1700'
    # @return [String]
    attr_accessor :end_time

    # Optional total number of minutes in TimeWindow.  Useful when duration of window is greater than 24 hours.
    # @return [Numeric]
    attr_accessor :total_minutes

    # List of comma-separated days of the week this window of time falls on.  If provided, at least one must be specified.
    # @return [String]
    attr_accessor :days

    # One of the possible recurrence values
    # @return [String]
    attr_accessor :recurs_by

    # Optional frequency of recurrence as specified by :recurs_by.  E.g, :single, :every, :every_other, etc. If not provided, assumed to be :every
    # @return [String]
    attr_accessor :frequency

    # Optional occurrence of frequency. E.g, :first, :2nd, :last, :2nd_to_last, etc.  If not provided, assumed to be :every
    # @return [String]
    attr_accessor :occurrence

    # Required only when :recurs_by is 'monthly' or 'yearly' to differentiate between exact date or 'day in month/year'.  See Schedule examples.
    # @return [String]
    attr_accessor :date_recurs_by

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
      hash['user_id'] = self.user_id
      hash['resource_id'] = self.resource_id
      hash['start_date'] = self.start_date
      hash['end_date'] = self.end_date
      hash['start_time'] = self.start_time
      hash['end_time'] = self.end_time
      hash['total_minutes'] = self.total_minutes
      hash['days'] = self.days
      hash['recurs_by'] = self.recurs_by
      hash['frequency'] = self.frequency
      hash['occurrence'] = self.occurrence
      hash['date_recurs_by'] = self.date_recurs_by
      hash['api_key'] = self.api_key
      hash
    end

  end
end