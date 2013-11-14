require 'test_helper'

class FlexsliderCellTest < Cell::TestCase
  it "should show flexslider" do
    post = create(:flexslider)
    render_cell('scenery/flexslider', :show).must_include 'kitchen_adventurer_caramel'
  end
end