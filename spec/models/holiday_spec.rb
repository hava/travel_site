require 'spec_helper'

describe Holiday do
  before(:each) do
    @valid_attributes = {
            :name => "Vancouver",
            :from_date => Date.new(y=2010, m=6, d=26),
            :to_date => Date.new(y=2010, m=7, d=3)
    }
  end

  it "should create a new instance given valid attributes" do
    Holiday.create!(@valid_attributes)
  end

  it "name cannot be blank" do
    holiday = Holiday.new(@valid_attributes.merge(:name=>""))
    holiday.should_not be_valid
  end

  it "name cannot be nil" do
    holiday = Holiday.new(@valid_attributes.merge(:name=>nil))
    holiday.should_not be_valid
  end

  it "from date must be before to date" do
    holiday = Holiday.new(@valid_attributes.merge(:from_date=>Date.new(y=2010, m=7, d=4)))
    holiday.should_not be_valid
  end

  it "from_date can be nil" do
    holiday = Holiday.new(@valid_attributes.merge(:from_date=>nil))
    holiday.should be_valid
  end

  it "to_date can be nil" do
    holiday = Holiday.new(@valid_attributes.merge(:to_date=>nil))
    holiday.should be_valid
  end
end
