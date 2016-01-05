# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 01/05/2016

module Gonebusy
  class UpdateBookingByIdBody

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
      hash['api_key'] = self.api_key
      hash
    end

  end
end