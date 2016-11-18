# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class SearchController < BaseController
    @@instance = SearchController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Search for Providers and Provided Services.
    # @param [String] authorization Required parameter: A valid API key, in the format 'Token API_KEY'
    # @param [String] query Required parameter: Example: 
    # @return SearchQueryResponse response from the API call
    def search_query(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/search/{query}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'query' => options['query']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'Authorization' => Configuration.authorization,
        'Authorization' => options['authorization']
      }

      # create the HttpRequest object for the call
      _request = @http_client.get _query_url, headers: _headers

      # apply authentication
      CustomAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 400
        raise EntitiesErrorException.new '400 - Bad Request', _context
      elsif _context.response.status_code == 401
        raise EntitiesErrorException.new '401 - Unauthorized/Missing Token', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected error', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return SearchQueryResponse.from_hash(decoded)
    end
  end
end
