# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 03/04/2016

module Gonebusy
  class ServicesController

    # Return list of Services.
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [Numeric] page Optional parameter: Page offset to fetch.
    # @param [Numeric] per_page Optional parameter: Number of results to return per page.
    # @param [Numeric] user_id Optional parameter: Retrieve Services provided by the User specified by Id.  You must be authorized to manage this User Id.
    # @return GetServicesResponse response from the API call
    def get_services api_key, page: 1, per_page: 10, user_id: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/services"

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
      if response.code == 401
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

    # Create a Service with params.
    # @param [CreateServiceBody] create_service_body Required parameter: the content of the request
    # @return CreateServiceResponse response from the API call
    def create_service create_service_body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/services/new"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "content-type" => "application/json; charset=utf-8"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:create_service_body.to_json

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

    # Return available times for a Service.
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [String] id Required parameter: TODO: type description here
    # @param [DateTime] date Optional parameter: Date to check for availability.  Either this field or a date range employing start_date and end_date must be supplied.  If date is provided, start_date/end_date are ignored.  Several formats are supported: '2014-10-31', 'October 31, 2014'.
    # @param [DateTime] end_date Optional parameter: End Date of a range to check for availability.  If supplied, date must not be supplied and start_date must be supplied.  Several formats are supported: '2014-10-31', 'October 31, 2014'.
    # @param [DateTime] start_date Optional parameter: Start Date of a range to check for availability.  If supplied, date must not be supplied and end_date must be supplied.  Several formats are supported: '2014-10-31', 'October 31, 2014'.
    # @return GetServiceAvailableSlotsByIdResponse response from the API call
    def get_service_available_slots_by_id api_key, id, date: nil, end_date: nil, start_date: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/services/{id}/available_slots"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "id" => id,
      }

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "api_key" => api_key,
        "date" => date,
        "end_date" => end_date,
        "start_date" => start_date,
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

    # Return a Service by id.
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [String] id Required parameter: TODO: type description here
    # @return GetServiceByIdResponse response from the API call
    def get_service_by_id api_key, id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/services/{id}"

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
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Update a Service with params.
    # @param [String] id Required parameter: TODO: type description here
    # @param [UpdateServiceByIdBody] update_service_by_id_body Required parameter: the content of the request
    # @return UpdateServiceByIdResponse response from the API call
    def update_service_by_id id, update_service_by_id_body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/services/{id}"

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
      response = Unirest.put query_url, headers:headers, parameters:update_service_by_id_body.to_json

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

    # Delete a Service by id
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [String] id Required parameter: TODO: type description here
    # @return DeleteServiceByIdResponse response from the API call
    def delete_service_by_id api_key, id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/services/{id}"

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

  end
end