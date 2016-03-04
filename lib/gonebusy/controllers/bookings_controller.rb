# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 03/04/2016

module Gonebusy
  class BookingsController

    # Return list of Bookings.
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [Numeric] page Optional parameter: Page offset to fetch.
    # @param [Numeric] per_page Optional parameter: Number of results to return per page.
    # @param [String] states Optional parameter: Comma-separated list of Booking states to retrieve only Bookings in those states.  Leave blank to retrieve all Bookings.
    # @param [Numeric] user_id Optional parameter: Retrieve Bookings owned only by this User Id.  You must be authorized to manage this User Id.
    # @return GetBookingsResponse response from the API call
    def get_bookings api_key, page: 1, per_page: 10, states: nil, user_id: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/bookings"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "api_key" => api_key,
        "page" => if page.nil? then 1 else page end,
        "per_page" => if per_page.nil? then 10 else per_page end,
        "states" => states,
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

    # Create a Booking with params
    # @param [CreateBookingBody] create_booking_body Required parameter: the content of the request
    # @return CreateBookingResponse response from the API call
    def create_booking create_booking_body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/bookings/new"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "content-type" => "application/json; charset=utf-8"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:create_booking_body.to_json

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new "Bad Request", 400, response.raw_body
      elsif response.code == 401
        raise APIException.new "Unauthorized/Missing Token", 401, response.raw_body
      elsif response.code == 403
        raise APIException.new "Forbidden", 403, response.raw_body
      elsif response.code == 422
        raise APIException.new "Unprocessable Entity", 422, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Return a Booking by id.
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [String] id Required parameter: TODO: type description here
    # @return GetBookingByIdResponse response from the API call
    def get_booking_by_id api_key, id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/bookings/{id}"

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

    # Update a Booking by id
    # @param [String] id Required parameter: TODO: type description here
    # @param [UpdateBookingByIdBody] update_booking_by_id_body Required parameter: the content of the request
    # @return UpdateBookingByIdResponse response from the API call
    def update_booking_by_id id, update_booking_by_id_body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/bookings/{id}"

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
      response = Unirest.put query_url, headers:headers, parameters:update_booking_by_id_body.to_json

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

    # Cancel a Booking by id
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [String] id Required parameter: TODO: type description here
    # @return CancelBookingByIdResponse response from the API call
    def cancel_booking_by_id api_key, id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/bookings/{id}"

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