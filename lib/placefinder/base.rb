require 'rubygems'
require 'httparty'

module Placefinder
  class Base
    include HTTParty
    base_uri 'http://where.yahooapis.com/geocode'

    def initialize(params = {})
      @api_key = params[:api_key]
    end

    def get(params = {})
      params.merge!({:appid => @api_key}) if @api_key
      response = self.class.get('', :query => params)
      response.parsed_response
    end
  end

end
