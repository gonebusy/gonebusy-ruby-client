# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class EntitiesAddressEntity < BaseModel
    # city of Address
    # @return [String]
    attr_accessor :city

    # country of Address
    # @return [String]
    attr_accessor :country

    # country code of Address
    # @return [String]
    attr_accessor :country_code

    # latitude of Address
    # @return [String]
    attr_accessor :latitude

    # line 1 of Address
    # @return [String]
    attr_accessor :line_1

    # line 2 of Address
    # @return [String]
    attr_accessor :line_2

    # longitude of Address
    # @return [String]
    attr_accessor :longitude

    # postal code of Address
    # @return [String]
    attr_accessor :postal_code

    # province of Address
    # @return [String]
    attr_accessor :province

    # state of Address
    # @return [String]
    attr_accessor :state

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["city"] = "city"
        @hash["country"] = "country"
        @hash["country_code"] = "country_code"
        @hash["latitude"] = "latitude"
        @hash["line_1"] = "line1"
        @hash["line_2"] = "line2"
        @hash["longitude"] = "longitude"
        @hash["postal_code"] = "postal_code"
        @hash["province"] = "province"
        @hash["state"] = "state"
      end
      @hash
    end

    def initialize(city = nil,
                   country = nil,
                   country_code = nil,
                   latitude = nil,
                   line_1 = nil,
                   line_2 = nil,
                   longitude = nil,
                   postal_code = nil,
                   province = nil,
                   state = nil)
      @city = city
      @country = country
      @country_code = country_code
      @latitude = latitude
      @line_1 = line_1
      @line_2 = line_2
      @longitude = longitude
      @postal_code = postal_code
      @province = province
      @state = state
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        city = hash["city"]
        country = hash["country"]
        country_code = hash["country_code"]
        latitude = hash["latitude"]
        line_1 = hash["line1"]
        line_2 = hash["line2"]
        longitude = hash["longitude"]
        postal_code = hash["postal_code"]
        province = hash["province"]
        state = hash["state"]

        # Create object from extracted values
        EntitiesAddressEntity.new(city,
                                  country,
                                  country_code,
                                  latitude,
                                  line_1,
                                  line_2,
                                  longitude,
                                  postal_code,
                                  province,
                                  state)
      end
    end
  end
end
