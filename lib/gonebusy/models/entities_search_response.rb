# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class EntitiesSearchResponse < BaseModel
    # array of Services matching query
    # @return [List of EntitiesServiceResponse]
    attr_accessor :services

    # array of Users matching query
    # @return [List of EntitiesUserResponse]
    attr_accessor :users

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["services"] = "services"
        @hash["users"] = "users"
      end
      @hash
    end

    def initialize(services = nil,
                   users = nil)
      @services = services
      @users = users
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        # Parameter is an array, so we need to iterate through it
        services = nil
        if hash["services"] != nil
          services = Array.new
          hash["services"].each{|structure| services << (EntitiesServiceResponse.from_hash(structure) if structure)}
        end
        # Parameter is an array, so we need to iterate through it
        users = nil
        if hash["users"] != nil
          users = Array.new
          hash["users"].each{|structure| users << (EntitiesUserResponse.from_hash(structure) if structure)}
        end

        # Create object from extracted values
        EntitiesSearchResponse.new(services,
                                   users)
      end
    end
  end
end