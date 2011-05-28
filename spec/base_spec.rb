require 'spec_helper'

describe Placefinder::Base do
  API_URI = 'http://where.yahooapis.com/geocode'

  before(:each) do
    nil.stub(:parsed_response)
  end

  it "should include the API key in the request" do
    placefinder = Placefinder::Base.new(:api_key => '123456')
    params = {:q => "Central Park, NY, US", :flags => 'J'}
    with_key = params.merge(:appid => '123456')

    HTTParty.should_receive(:get).with(API_URI, :query => with_key)
    placefinder.get params
  end


  it "should not include the api key if not given" do
    placefinder = Placefinder::Base.new
    params = {:q => "Central Park, NY, US", :flags => 'J'}

    HTTParty.should_receive(:get).with(API_URI, :query => params)
    placefinder.get params
  end
end
