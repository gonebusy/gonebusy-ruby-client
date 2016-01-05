# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 01/05/2016

module Gonebusy
  class UsersController

    # Return all Users that your account has access to.  Includes your own User as well as any Users for which you are the Account Manager.
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [Numeric] page Optional parameter: Page offset to fetch.
    # @param [Numeric] per_page Optional parameter: Number of results to return per page.
    # @return GetUsersResponse response from the API call
    def get_users api_key, page: 1, per_page: 10
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/users"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "api_key" => api_key,
        "page" => if page.nil? then 1 else page end,
        "per_page" => if per_page.nil? then 10 else per_page end,
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
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Create a User
    # @param [CreateUserBody] create_user_body Required parameter: the content of the request
    # @return CreateUserResponse response from the API call
    def create_user create_user_body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/users/new"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "content-type" => "application/json; charset=utf-8"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:create_user_body.to_json

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

    # Return list of active Pro Users.
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @return GetUsersProsResponse response from the API call
    def get_users_pros api_key
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/users/pros"

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
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Return a User by id.
    # @param [String] api_key Required parameter: Valid API Key for your GoneBusy account (edit in top nav)
    # @param [String] id Required parameter: TODO: type description here
    # @return GetUserByIdResponse response from the API call
    def get_user_by_id api_key, id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/users/{id}"

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

    # Update a User by id, with params.
    # @param [String] id Required parameter: TODO: type description here
    # @param [UpdateUserByIdBody] update_user_by_id_body Required parameter: the content of the request
    # @return UpdateUserByIdResponse response from the API call
    def update_user_by_id id, update_user_by_id_body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/users/{id}"

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
      response = Unirest.put query_url, headers:headers, parameters:update_user_by_id_body.to_json

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

    # Register a User as a Pro with params.
    # @param [String] id Required parameter: TODO: type description here
    # @param [RegisterUserAsProBody] register_user_as_pro_body Required parameter: the content of the request
    # @return RegisterUserAsProResponse response from the API call
    def register_user_as_pro id, register_user_as_pro_body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/users/{id}/register_pro"

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
      response = Unirest.put query_url, headers:headers, parameters:register_user_as_pro_body.to_json

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new "Bad Request", 400, response.raw_body
      elsif response.code == 401
        raise APIException.new "Unauthorized/Missing Token", 401, response.raw_body
      elsif response.code == 403
        raise APIException.new "Forbidden", 403, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected error", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

  end
end