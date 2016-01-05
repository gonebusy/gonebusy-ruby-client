# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 01/05/2016

module Gonebusy
  class UpdateUserByIdBody

    # User's email address
    # @return [String]
    attr_accessor :email

    # Optional first name
    # @return [String]
    attr_accessor :first_name

    # Optional last name
    # @return [String]
    attr_accessor :last_name

    # Optional name for your Business/Organization
    # @return [String]
    attr_accessor :business_name

    # Optional website URL
    # @return [String]
    attr_accessor :external_url

    # Optional vanity url - ex: www.gonebusy.com/[permalink] - must be unique
    # @return [String]
    attr_accessor :permalink

    # Optional timezone
    # @return [String]
    attr_accessor :timezone

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
      hash['email'] = self.email
      hash['first_name'] = self.first_name
      hash['last_name'] = self.last_name
      hash['business_name'] = self.business_name
      hash['external_url'] = self.external_url
      hash['permalink'] = self.permalink
      hash['timezone'] = self.timezone
      hash['api_key'] = self.api_key
      hash
    end

  end
end