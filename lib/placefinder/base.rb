require 'rubygems'
require 'httparty'

module Placefinder
  class Base
    API_URI = 'http://where.yahooapis.com/geocode'

    def initialize(params = {})
      @api_key = params[:api_key]
    end

    def get(params = {})
      params.merge!({:appid => @api_key}) if @api_key
      response = HTTParty.get(API_URI, :query => params)
      response.parsed_response
    end
  end

end
