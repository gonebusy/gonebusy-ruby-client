# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 03/04/2016

module Gonebusy
  class CreateCategoryBody

    # Category Name
    # @return [String]
    attr_accessor :name

    # Category Description
    # @return [String]
    attr_accessor :description

    # Optional abbreviated Category name
    # @return [String]
    attr_accessor :short_name

    # Optional full name of Category
    # @return [String]
    attr_accessor :long_name

    # Optional Id of Parent Category
    # @return [Numeric]
    attr_accessor :parent_category_id

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
      hash['short_name'] = self.short_name
      hash['long_name'] = self.long_name
      hash['parent_category_id'] = self.parent_category_id
      hash['api_key'] = self.api_key
      hash
    end

  end
end