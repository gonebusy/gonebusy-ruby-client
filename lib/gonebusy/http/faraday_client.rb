# This file was automatically generated for GoneBusy Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Gonebusy
  class FaradayClient < HttpClient
    # The constructor.
    def initialize(timeout)
      @connection = Faraday.new do |faraday|
        faraday.request :multipart
        faraday.request :url_encoded
        faraday.ssl[:ca_file] = Certifi.where
        faraday.adapter Faraday.default_adapter
        faraday.options[:open_timeout] = timeout
      end
    end

    # Method overridden from HttpClient.
    def execute_as_string(http_request)
      response = @connection.send(http_request.http_method.downcase, http_request.query_url) do |request| 
        request.headers = http_request.headers
        request.body = http_request.parameters
      end

      return convert_response(response)
    end

    # Method overridden from HttpClient.
    def execute_as_binary(http_request)
      response = @connection.send(http_request.http_method.downcase, http_request.query_url) do |request| 
        request.headers = http_request.headers
        request.body = http_request.parameters
      end

      return convert_response(response)
    end

    # Method overridden from HttpClient.
    def convert_response(response)
      return HttpResponse.new(response.status, response.headers, response.body)
    end
  end
end