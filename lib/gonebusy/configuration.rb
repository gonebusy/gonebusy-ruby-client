module Gonebusy
  class Configuration
    # The base Uri for API calls
    @base_uri = 'http://beta.gonebusy.com/api/v1'

    # Set Authorization to "Token <your API key>"
    @authorization = 'Token <your API key>'

    # The attribute accessors for public properties
    class << self
      attr_accessor :base_uri
      attr_accessor :authorization
    end
 
  end
end
