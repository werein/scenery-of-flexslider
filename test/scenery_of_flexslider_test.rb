require 'test_helper'

module Scenery
  describe OfFlexslider do 
    it "should be module" do 
      OfFlexslider.must_be_kind_of Module
    end

    it "should have flexslider class" do 
      Scenery::Flexslider.must_be_kind_of Class
    end

    it "should have flexslider cell class" do 
      Scenery::FlexsliderCell.must_be_kind_of Class
    end
  end
end