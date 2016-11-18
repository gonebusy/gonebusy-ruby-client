# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module Gonebusy
  class EntitiesTimeWindowResponse < BaseModel
    # date_recurs_by
    # @return [String]
    attr_accessor :date_recurs_by

    # array of days of week TimeWindow falls on
    # @return [List of String]
    attr_accessor :days

    # end date
    # @return [DateTime]
    attr_accessor :end_date

    # end time
    # @return [String]
    attr_accessor :end_time

    # frequency
    # @return [String]
    attr_accessor :frequency

    # id of TimeWindow
    # @return [Integer]
    attr_accessor :id

    # true is available, false is unavailable
    # @return [Boolean]
    attr_accessor :negation

    # occurrence
    # @return [String]
    attr_accessor :occurrence

    # recurs by
    # @return [String]
    attr_accessor :recurs_by

    # start date
    # @return [DateTime]
    attr_accessor :start_date

    # start time
    # @return [String]
    attr_accessor :start_time

    # total minutes spanned
    # @return [Integer]
    attr_accessor :total_minutes

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["date_recurs_by"] = "date_recurs_by"
        @hash["days"] = "days"
        @hash["end_date"] = "end_date"
        @hash["end_time"] = "end_time"
        @hash["frequency"] = "frequency"
        @hash["id"] = "id"
        @hash["negation"] = "negation"
        @hash["occurrence"] = "occurrence"
        @hash["recurs_by"] = "recurs_by"
        @hash["start_date"] = "start_date"
        @hash["start_time"] = "start_time"
        @hash["total_minutes"] = "total_minutes"
      end
      @hash
    end

    def initialize(date_recurs_by = nil,
                   days = nil,
                   end_date = nil,
                   end_time = nil,
                   frequency = nil,
                   id = nil,
                   negation = nil,
                   occurrence = nil,
                   recurs_by = nil,
                   start_date = nil,
                   start_time = nil,
                   total_minutes = nil)
      @date_recurs_by = date_recurs_by
      @days = days
      @end_date = end_date
      @end_time = end_time
      @frequency = frequency
      @id = id
      @negation = negation
      @occurrence = occurrence
      @recurs_by = recurs_by
      @start_date = start_date
      @start_time = start_time
      @total_minutes = total_minutes
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        date_recurs_by = hash["date_recurs_by"]
        days = hash["days"]
        end_date = DateTime.iso8601(hash["end_date"]) if hash["end_date"]
        end_time = hash["end_time"]
        frequency = hash["frequency"]
        id = hash["id"]
        negation = hash["negation"]
        occurrence = hash["occurrence"]
        recurs_by = hash["recurs_by"]
        start_date = DateTime.iso8601(hash["start_date"]) if hash["start_date"]
        start_time = hash["start_time"]
        total_minutes = hash["total_minutes"]

        # Create object from extracted values
        EntitiesTimeWindowResponse.new(date_recurs_by,
                                       days,
                                       end_date,
                                       end_time,
                                       frequency,
                                       id,
                                       negation,
                                       occurrence,
                                       recurs_by,
                                       start_date,
                                       start_time,
                                       total_minutes)
      end
    end
  end
end
