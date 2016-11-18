# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetUsersResponse < BaseModel
    # TODO: Write general description for this method
    # @return [List of EntitiesUserResponse]
    attr_accessor :users

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["users"] = "users"
      end
      @hash
    end

    def initialize(users = nil)
      @users = users
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        # Parameter is an array, so we need to iterate through it
        users = nil
        if hash["users"] != nil
          users = Array.new
          hash["users"].each{|structure| users << (EntitiesUserResponse.from_hash(structure) if structure)}
        end

        # Create object from extracted values
        GetUsersResponse.new(users)
      end
    end
  end
end
