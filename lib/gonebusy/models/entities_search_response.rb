# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class EntitiesSearchResponse < BaseModel
    # array of Users matching query
    # @return [List of EntitiesUserResponse]
    attr_accessor :users

    # array of Services matching query
    # @return [List of EntitiesServiceResponse]
    attr_accessor :services

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["users"] = "users"
        @_hash["services"] = "services"
      end
      @_hash
    end

    def initialize(users = nil,
                   services = nil)
      @users = users
      @services = services
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      # Parameter is an array, so we need to iterate through it
      users = nil
      if hash['users'] != nil
        users = Array.new
        hash['users'].each{|structure| users << (EntitiesUserResponse.from_hash(structure) if structure)}
      end
      # Parameter is an array, so we need to iterate through it
      services = nil
      if hash['services'] != nil
        services = Array.new
        hash['services'].each{|structure| services << (EntitiesServiceResponse.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      EntitiesSearchResponse.new(users,
                                 services)
    end
  end
end
