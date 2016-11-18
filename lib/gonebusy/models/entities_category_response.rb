# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class EntitiesCategoryResponse < BaseModel
    # description of Category
    # @return [String]
    attr_accessor :description

    # id of Category
    # @return [Integer]
    attr_accessor :id

    # status of Category
    # @return [Boolean]
    attr_accessor :is_active

    # extended name for Category
    # @return [String]
    attr_accessor :long_name

    # name of Category
    # @return [String]
    attr_accessor :name

    # id of parent Category, if any
    # @return [Integer]
    attr_accessor :parent_category_id

    # abbreviated name for Category
    # @return [String]
    attr_accessor :short_name

    # array of subcategory ids, if any
    # @return [List of Integer]
    attr_accessor :subcategories

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["description"] = "description"
        @hash["id"] = "id"
        @hash["is_active"] = "is_active"
        @hash["long_name"] = "long_name"
        @hash["name"] = "name"
        @hash["parent_category_id"] = "parent_category_id"
        @hash["short_name"] = "short_name"
        @hash["subcategories"] = "subcategories"
      end
      @hash
    end

    def initialize(description = nil,
                   id = nil,
                   is_active = nil,
                   long_name = nil,
                   name = nil,
                   parent_category_id = nil,
                   short_name = nil,
                   subcategories = nil)
      @description = description
      @id = id
      @is_active = is_active
      @long_name = long_name
      @name = name
      @parent_category_id = parent_category_id
      @short_name = short_name
      @subcategories = subcategories
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        description = hash["description"]
        id = hash["id"]
        is_active = hash["is_active"]
        long_name = hash["long_name"]
        name = hash["name"]
        parent_category_id = hash["parent_category_id"]
        short_name = hash["short_name"]
        subcategories = hash["subcategories"]

        # Create object from extracted values
        EntitiesCategoryResponse.new(description,
                                     id,
                                     is_active,
                                     long_name,
                                     name,
                                     parent_category_id,
                                     short_name,
                                     subcategories)
      end
    end
  end
end
