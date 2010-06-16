require 'spec_helper'

describe HolidaysController do

  #Delete these examples and add some real ones
  it "should use HolidayController" do
    controller.should be_an_instance_of(HolidaysController)
  end


  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
end
