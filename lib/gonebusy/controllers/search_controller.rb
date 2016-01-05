# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 01/05/2016

module Gonebusy
  class SearchController

    # Search for Providers and Provided Services.
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [String] query Required parameter: TODO: type description here
    # @return SearchQueryResponse response from the API call
    def search_query api_key, query
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/search/{query}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "query" => query,
      }

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "api_key" => api_key,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new "Bad Request", 400, response.raw_body
      elsif response.code == 401
        raise APIException.new "Unauthorized/Missing Token", 401, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

  end
end