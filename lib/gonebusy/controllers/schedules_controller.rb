# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 01/05/2016

module Gonebusy
  class SchedulesController

    # Return all Schedules that your account has access to.  Includes Schedules for your own User as well as any Users for which you are the Account Manager.
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [Numeric] page Optional parameter: Page offset to fetch.
    # @param [Numeric] per_page Optional parameter: Number of results to return per page.
    # @param [Numeric] user_id Optional parameter: Retrieve Schedules owned only by this User Id.  You must be authorized to manage this User Id.
    # @return GetSchedulesResponse response from the API call
    def get_schedules api_key, page: 1, per_page: 10, user_id: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/schedules"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "api_key" => api_key,
        "page" => if page.nil? then 1 else page end,
        "per_page" => if per_page.nil? then 10 else per_page end,
        "user_id" => user_id,
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
      elsif response.code == 403
        raise APIException.new "Forbidden", 403, response.raw_body
      elsif response.code == 404
        raise APIException.new "Not Found", 404, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Create a Schedule with params.
    # @param [CreateScheduleBody] create_schedule_body Required parameter: the content of the request
    # @return CreateScheduleResponse response from the API call
    def create_schedule create_schedule_body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/schedules/new"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "content-type" => "application/json; charset=utf-8"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:create_schedule_body.to_json

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new "Bad Request", 400, response.raw_body
      elsif response.code == 401
        raise APIException.new "Unauthorized/Missing Token", 401, response.raw_body
      elsif response.code == 403
        raise APIException.new "Forbidden", 403, response.raw_body
      elsif response.code == 404
        raise APIException.new "Not Found", 404, response.raw_body
      elsif response.code == 422
        raise APIException.new "Unprocessable Entity", 422, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Return a Schedule by id.
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [String] id Required parameter: TODO: type description here
    # @return GetScheduleByIdResponse response from the API call
    def get_schedule_by_id api_key, id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/schedules/{id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "id" => id,
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
      elsif response.code == 403
        raise APIException.new "Forbidden", 403, response.raw_body
      elsif response.code == 404
        raise APIException.new "Not Found", 404, response.raw_body
      elsif response.code == 410
        raise APIException.new "Gone", 410, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Delete a Schedule
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [String] id Required parameter: TODO: type description here
    # @return DeleteScheduleByIdResponse response from the API call
    def delete_schedule_by_id api_key, id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/schedules/{id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "id" => id,
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
      response = Unirest.delete query_url, headers:headers

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new "Bad Request", 400, response.raw_body
      elsif response.code == 401
        raise APIException.new "Unauthorized/Missing Token", 401, response.raw_body
      elsif response.code == 403
        raise APIException.new "Forbidden", 403, response.raw_body
      elsif response.code == 404
        raise APIException.new "Not Found", 404, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Add a TimeWindow to a Schedule.
    # @param [CreateScheduleTimeWindowBody] create_schedule_time_window_body Required parameter: the content of the request
    # @param [String] id Required parameter: TODO: type description here
    # @return CreateScheduleTimeWindowResponse response from the API call
    def create_schedule_time_window create_schedule_time_window_body, id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/schedules/{id}/time_windows/new"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "id" => id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "content-type" => "application/json; charset=utf-8"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:create_schedule_time_window_body.to_json

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new "Bad Request", 400, response.raw_body
      elsif response.code == 401
        raise APIException.new "Unauthorized/Missing Token", 401, response.raw_body
      elsif response.code == 403
        raise APIException.new "Forbidden", 403, response.raw_body
      elsif response.code == 404
        raise APIException.new "Not Found", 404, response.raw_body
      elsif response.code == 422
        raise APIException.new "Unprocessable Entity", 422, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Update a TimeWindow for a Schedule.
    # @param [String] id Required parameter: TODO: type description here
    # @param [String] time_window_id Required parameter: TODO: type description here
    # @param [UpdateScheduleTimeWindowByIdBody] update_schedule_time_window_by_id_body Required parameter: the content of the request
    # @return UpdateScheduleTimeWindowByIdResponse response from the API call
    def update_schedule_time_window_by_id id, time_window_id, update_schedule_time_window_by_id_body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/schedules/{id}/time_windows/{time_window_id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "id" => id,
        "time_window_id" => time_window_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "content-type" => "application/json; charset=utf-8"
      }

      # invoke the API call request to fetch the response
      response = Unirest.put query_url, headers:headers, parameters:update_schedule_time_window_by_id_body.to_json

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new "Bad Request", 400, response.raw_body
      elsif response.code == 401
        raise APIException.new "Unauthorized/Missing Token", 401, response.raw_body
      elsif response.code == 403
        raise APIException.new "Forbidden", 403, response.raw_body
      elsif response.code == 404
        raise APIException.new "Not Found", 404, response.raw_body
      elsif response.code == 422
        raise APIException.new "Unprocessable Entity", 422, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Delete a TimeWindow from a Schedule
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [String] id Required parameter: TODO: type description here
    # @param [String] time_window_id Required parameter: TODO: type description here
    # @return DeleteScheduleTimeWindowByIdResponse response from the API call
    def delete_schedule_time_window_by_id api_key, id, time_window_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/schedules/{id}/time_windows/{time_window_id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "id" => id,
        "time_window_id" => time_window_id,
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
      response = Unirest.delete query_url, headers:headers

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new "Bad Request", 400, response.raw_body
      elsif response.code == 401
        raise APIException.new "Unauthorized/Missing Token", 401, response.raw_body
      elsif response.code == 403
        raise APIException.new "Forbidden", 403, response.raw_body
      elsif response.code == 404
        raise APIException.new "Not Found", 404, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

  end
end