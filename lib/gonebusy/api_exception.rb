# This file was automatically generated for GoneBusy Inc. by APIMATIC BETA v2.0 on 03/04/2016

module Gonebusy
  class APIException < StandardError

    # value store
    attr_reader :response_code

	# value store
    attr_reader :response_body

    # The HTTP response code from the API request
    # @param [String] the reason for raising an exception
    # @param [Numeric] the HTTP response code from the API request
	# @param [Object] the HTTP unprased response from the API request
    def initialize(reason, response_code, response_body)
        super(reason)
        @response_code = response_code
		@response_body = response_body
    end

  end
end