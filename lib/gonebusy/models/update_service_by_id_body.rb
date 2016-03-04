# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 03/04/2016

module Gonebusy
  class UpdateServiceByIdBody

    # Service Name
    # @return [String]
    attr_accessor :name

    # Service Description
    # @return [String]
    attr_accessor :description

    # Duration in minutes of the Service
    # @return [Numeric]
    attr_accessor :duration

    # Optional abbreviated Service name
    # @return [String]
    attr_accessor :short_name

    # Optional Price Model Id
    # @return [Numeric]
    attr_accessor :price_model_id

    # Optional List of comma-separated Resource IDs that will provide this Service, default: API user's resource id
    # @return [String]
    attr_accessor :resources

    # Optional List of comma-separated Category IDs to associate with Service
    # @return [String]
    attr_accessor :categories

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
      hash['name'] = self.name
      hash['description'] = self.description
      hash['duration'] = self.duration
      hash['short_name'] = self.short_name
      hash['price_model_id'] = self.price_model_id
      hash['resources'] = self.resources
      hash['categories'] = self.categories
      hash['api_key'] = self.api_key
      hash
    end

  end
end