require "test_helper"

class VenueTest < ActiveSupport::TestCase
  test "belongs_to event" do
    assert_equal :belongs_to, Venue.reflect_on_association(:event)&.macro
  end 
end
