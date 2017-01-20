# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class UsersController < BaseController
    @@instance = UsersController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Update a User by id, with params.
    # @param [String] authorization Required parameter: A valid API key, in the format 'Token API_KEY'
    # @param [String] id Required parameter: Example: 
    # @param [UpdateUserByIdBody] update_user_by_id_body Required parameter: the content of the request
    # @return UpdateUserByIdResponse response from the API call
    def update_user_by_id(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/users/{id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'id' => options['id']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'Authorization' => Configuration.authorization,
        'Authorization' => options['authorization']
      }

      # create the HttpRequest object for the call
      _request = @http_client.put _query_url, headers: _headers, parameters: options['update_user_by_id_body'].to_json

      # apply authentication
      CustomAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 400
        raise EntitiesErrorException.new '400 - Bad Request', _context
      elsif _context.response.status_code == 401
        raise EntitiesErrorException.new '401 - Unauthorized/Missing Token', _context
      elsif _context.response.status_code == 403
        raise EntitiesErrorException.new '403 - Forbidden', _context
      elsif _context.response.status_code == 404
        raise EntitiesErrorException.new '404 - Not Found', _context
      elsif _context.response.status_code == 422
        raise EntitiesErrorException.new '422 - Unprocessable Entity', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected error', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return UpdateUserByIdResponse.from_hash(decoded)
    end

    # Return a User by id.
    # @param [String] authorization Required parameter: A valid API key, in the format 'Token API_KEY'
    # @param [String] id Required parameter: Example: 
    # @return GetUserByIdResponse response from the API call
    def get_user_by_id(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/users/{id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'id' => options['id']
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
      elsif _context.response.status_code == 403
        raise EntitiesErrorException.new '403 - Forbidden', _context
      elsif _context.response.status_code == 404
        raise EntitiesErrorException.new '404 - Not Found', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected error', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetUserByIdResponse.from_hash(decoded)
    end

    # Create a User
    # @param [String] authorization Required parameter: A valid API key, in the format 'Token API_KEY'
    # @param [CreateUserBody] create_user_body Required parameter: the content of the request
    # @return CreateUserResponse response from the API call
    def create_user(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/users/new'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'Authorization' => Configuration.authorization,
        'Authorization' => options['authorization']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, headers: _headers, parameters: options['create_user_body'].to_json

      # apply authentication
      CustomAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 400
        raise EntitiesErrorException.new '400 - Bad Request', _context
      elsif _context.response.status_code == 401
        raise EntitiesErrorException.new '401 - Unauthorized/Missing Token', _context
      elsif _context.response.status_code == 403
        raise EntitiesErrorException.new '403 - Forbidden', _context
      elsif _context.response.status_code == 422
        raise EntitiesErrorException.new '422 - Unprocessable Entity', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected error', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return CreateUserResponse.from_hash(decoded)
    end

    # Return all Users that your account has access to.  Includes your own User as well as any Users for which you are the Account Manager.
    # @param [String] authorization Required parameter: A valid API key, in the format 'Token API_KEY'
    # @param [Integer] page Optional parameter: Page offset to fetch.
    # @param [Integer] per_page Optional parameter: Number of results to return per page.
    # @return GetUsersResponse response from the API call
    def get_users(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/users'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'page' => options['page'],
        'per_page' => options['per_page']
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
      elsif _context.response.status_code == 403
        raise EntitiesErrorException.new '403 - Forbidden', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected error', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetUsersResponse.from_hash(decoded)
    end
  end
end
