# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 01/05/2016

module Gonebusy
  class CreatePricingModelBody

    # PricingModel Name
    # @return [String]
    attr_accessor :name

    # Type of PricingModel
    # @return [String]
    attr_accessor :type

    # Create a PricingModel for this User Id.  You must be authorized to manage this User Id.
    # @return [Numeric]
    attr_accessor :user_id

    # Valid API Key for your GoneBusy account
    # (edit in top nav)
    # @return [String]
    attr_accessor :api_key

    # Optional Notes Field
    # @return [String]
    attr_accessor :notes

    # Price
    # @return [Double]
    attr_accessor :price

    # 3 Letter ISO Currency Code
    # @return [String]
    attr_accessor :currency

    
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
      hash['name'] = self.name
      hash['type'] = self.type
      hash['user_id'] = self.user_id
      hash['api_key'] = self.api_key
      hash['notes'] = self.notes
      hash['price'] = self.price
      hash['currency'] = self.currency
      hash
    end

  end
end