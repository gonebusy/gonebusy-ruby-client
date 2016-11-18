# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class GetUserByIdResponse < BaseModel
    # TODO: Write general description for this method
    # @return [EntitiesUserResponse]
    attr_accessor :user

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["user"] = "user"
      end
      @hash
    end

    def initialize(user = nil)
      @user = user
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        user = EntitiesUserResponse.from_hash(hash["user"]) if hash["user"]

        # Create object from extracted values
        GetUserByIdResponse.new(user)
      end
    end
  end
end
