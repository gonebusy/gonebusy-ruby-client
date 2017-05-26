# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class CreateCategoryBody < BaseModel
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
    # @return [Integer]
    attr_accessor :parent_category_id

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["name"] = "name"
        @_hash["description"] = "description"
        @_hash["short_name"] = "short_name"
        @_hash["long_name"] = "long_name"
        @_hash["parent_category_id"] = "parent_category_id"
      end
      @_hash
    end

    def initialize(name = nil,
                   description = nil,
                   short_name = nil,
                   long_name = nil,
                   parent_category_id = nil)
      @name = name
      @description = description
      @short_name = short_name
      @long_name = long_name
      @parent_category_id = parent_category_id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      name = hash['name']
      description = hash['description']
      short_name = hash['short_name']
      long_name = hash['long_name']
      parent_category_id = hash['parent_category_id']

      # Create object from extracted values
      CreateCategoryBody.new(name,
                             description,
                             short_name,
                             long_name,
                             parent_category_id)
    end
  end
end
