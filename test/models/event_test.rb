require "test_helper"

class EventTest < ActiveSupport::TestCase
  test "has many venues" do
    assert_equal :has_many, Event.reflect_on_association(:venues)&.macro
  end 
  
  test "accepts nested attributes for venues" do
    event = Event.new(
      venues_attributes: [
        { content: 'Foo' },
        { content: 'Bar' },
        { content: 'Baz' }
      ]
    )
    assert_equal(3, event.venues.size)
  end 
end
