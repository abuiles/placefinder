require 'spec_helper'

describe Placefinder::Base do
  it "should assert true" do
    tatft = "should we test all the fucking time?"
    def tatft.should_we?
      false
    end
    tatft.should_we?.should be(false)
  end
end
