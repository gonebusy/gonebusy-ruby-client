# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class EntitiesUserResponse < BaseModel
    # id of User
    # @return [Integer]
    attr_accessor :id

    # id of defacto Resource for User
    # @return [Integer]
    attr_accessor :resource_id

    # id of Account Manager user for User
    # @return [Integer]
    attr_accessor :account_manager_id

    # email of User
    # @return [String]
    attr_accessor :email

    # phone number of User
    # @return [String]
    attr_accessor :phone

    # first name of User
    # @return [String]
    attr_accessor :first_name

    # last name of User
    # @return [String]
    attr_accessor :last_name

    # status of user
    # @return [Boolean]
    attr_accessor :disabled

    # business name for User
    # @return [String]
    attr_accessor :business_name

    # external url to business
    # @return [String]
    attr_accessor :external_url

    # permalink of User
    # @return [String]
    attr_accessor :permalink

    # timezone of User,
    # @return [String]
    attr_accessor :timezone

    # address of User
    # @return [EntitiesAddressEntity]
    attr_accessor :address

    # User account type
    # @return [String]
    attr_accessor :role

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["id"] = "id"
        @_hash["resource_id"] = "resource_id"
        @_hash["account_manager_id"] = "account_manager_id"
        @_hash["email"] = "email"
        @_hash["phone"] = "phone"
        @_hash["first_name"] = "first_name"
        @_hash["last_name"] = "last_name"
        @_hash["disabled"] = "disabled"
        @_hash["business_name"] = "business_name"
        @_hash["external_url"] = "external_url"
        @_hash["permalink"] = "permalink"
        @_hash["timezone"] = "timezone"
        @_hash["address"] = "address"
        @_hash["role"] = "role"
      end
      @_hash
    end

    def initialize(id = nil,
                   resource_id = nil,
                   account_manager_id = nil,
                   email = nil,
                   phone = nil,
                   first_name = nil,
                   last_name = nil,
                   disabled = nil,
                   business_name = nil,
                   external_url = nil,
                   permalink = nil,
                   timezone = nil,
                   address = nil,
                   role = nil)
      @id = id
      @resource_id = resource_id
      @account_manager_id = account_manager_id
      @email = email
      @phone = phone
      @first_name = first_name
      @last_name = last_name
      @disabled = disabled
      @business_name = business_name
      @external_url = external_url
      @permalink = permalink
      @timezone = timezone
      @address = address
      @role = role
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      id = hash['id']
      resource_id = hash['resource_id']
      account_manager_id = hash['account_manager_id']
      email = hash['email']
      phone = hash['phone']
      first_name = hash['first_name']
      last_name = hash['last_name']
      disabled = hash['disabled']
      business_name = hash['business_name']
      external_url = hash['external_url']
      permalink = hash['permalink']
      timezone = hash['timezone']
      address = EntitiesAddressEntity.from_hash(hash['address']) if hash['address']
      role = hash['role']

      # Create object from extracted values
      EntitiesUserResponse.new(id,
                               resource_id,
                               account_manager_id,
                               email,
                               phone,
                               first_name,
                               last_name,
                               disabled,
                               business_name,
                               external_url,
                               permalink,
                               timezone,
                               address,
                               role)
    end
  end
end
