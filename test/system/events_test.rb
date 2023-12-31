require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "should create event" do
    visit events_url
    click_on "New event"

    fill_in "Content", with: @event.content
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should create nested venues" do
    visit events_url
    click_on "New event"

    fill_in "Content", with: @event.content
    fill_in "Venue Content", with: "Hello World", match: :first

    assert_difference("Venue.count", 3) do 
      click_on "Create Event"
    end

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should update Event" do
    visit event_url(@event)
    click_on "Edit this event", match: :first

    fill_in "Content", with: @event.content
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "should destroy Event" do
    visit event_url(@event)
    click_on "Destroy this event", match: :first

    assert_text "Event was successfully destroyed"
  end
end
