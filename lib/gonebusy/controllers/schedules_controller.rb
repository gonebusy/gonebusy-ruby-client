# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class SchedulesController < BaseController
    @@instance = SchedulesController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Delete a TimeWindow from a Schedule
    # @param [String] authorization Required parameter: A valid API key, in the format 'Token API_KEY'
    # @param [String] id Required parameter: Example: 
    # @param [String] time_window_id Required parameter: Example: 
    # @return DeleteScheduleTimeWindowByIdResponse response from the API call
    def delete_schedule_time_window_by_id(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/schedules/{id}/time_windows/{time_window_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'id' => options['id'],
        'time_window_id' => options['time_window_id']
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
      _request = @http_client.delete _query_url, headers: _headers

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
      return DeleteScheduleTimeWindowByIdResponse.from_hash(decoded)
    end

    # Add a TimeWindow to a Schedule.
    # @param [String] authorization Required parameter: A valid API key, in the format 'Token API_KEY'
    # @param [CreateScheduleTimeWindowBody] create_schedule_time_window_body Required parameter: the content of the request
    # @param [String] id Required parameter: Example: 
    # @return CreateScheduleTimeWindowResponse response from the API call
    def create_schedule_time_window(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/schedules/{id}/time_windows/new'

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
      _request = @http_client.post _query_url, headers: _headers, parameters: options['create_schedule_time_window_body'].to_json

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
      return CreateScheduleTimeWindowResponse.from_hash(decoded)
    end

    # Delete a Schedule
    # @param [String] authorization Required parameter: A valid API key, in the format 'Token API_KEY'
    # @param [String] id Required parameter: Example: 
    # @return DeleteScheduleByIdResponse response from the API call
    def delete_schedule_by_id(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/schedules/{id}'

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
      _request = @http_client.delete _query_url, headers: _headers

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
      return DeleteScheduleByIdResponse.from_hash(decoded)
    end

    # Return a Schedule by id.
    # @param [String] authorization Required parameter: A valid API key, in the format 'Token API_KEY'
    # @param [String] id Required parameter: Example: 
    # @return GetScheduleByIdResponse response from the API call
    def get_schedule_by_id(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/schedules/{id}'

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
      elsif _context.response.status_code == 410
        raise EntitiesErrorException.new '410 - Gone', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected error', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetScheduleByIdResponse.from_hash(decoded)
    end

    # Create a Schedule with params.
    # @param [String] authorization Required parameter: A valid API key, in the format 'Token API_KEY'
    # @param [CreateScheduleBody] create_schedule_body Required parameter: the content of the request
    # @return CreateScheduleResponse response from the API call
    def create_schedule(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/schedules/new'

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
      _request = @http_client.post _query_url, headers: _headers, parameters: options['create_schedule_body'].to_json

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
      return CreateScheduleResponse.from_hash(decoded)
    end

    # Update a TimeWindow for a Schedule.
    # @param [String] authorization Required parameter: A valid API key, in the format 'Token API_KEY'
    # @param [String] id Required parameter: Example: 
    # @param [String] time_window_id Required parameter: Example: 
    # @param [UpdateScheduleTimeWindowByIdBody] update_schedule_time_window_by_id_body Required parameter: the content of the request
    # @return UpdateScheduleTimeWindowByIdResponse response from the API call
    def update_schedule_time_window_by_id(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/schedules/{id}/time_windows/{time_window_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'id' => options['id'],
        'time_window_id' => options['time_window_id']
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
      _request = @http_client.put _query_url, headers: _headers, parameters: options['update_schedule_time_window_by_id_body'].to_json

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
      return UpdateScheduleTimeWindowByIdResponse.from_hash(decoded)
    end

    # Return all Schedules that your account has access to.  Includes Schedules for your own User as well as any Users for which you are the Account Manager.
    # @param [String] authorization Required parameter: A valid API key, in the format 'Token API_KEY'
    # @param [Integer] page Optional parameter: Page offset to fetch.
    # @param [Integer] per_page Optional parameter: Number of results to return per page.
    # @param [Integer] user_id Optional parameter: Retrieve Schedules owned only by this User Id.  You must be authorized to manage this User Id.
    # @return GetSchedulesResponse response from the API call
    def get_schedules(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/schedules'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'page' => options['page'],
        'per_page' => options['per_page'],
        'user_id' => options['user_id']
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
      return GetSchedulesResponse.from_hash(decoded)
    end
  end
end
