require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "should create request" do
    visit requests_url
    click_on "New request"

    fill_in "Birthdate", with: @request.birthdate
    fill_in "City", with: @request.city
    fill_in "Country", with: @request.country
    fill_in "Name", with: @request.name
    fill_in "Reason", with: @request.reason
    fill_in "State", with: @request.state
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "should update Request" do
    visit request_url(@request)
    click_on "Edit this request", match: :first

    fill_in "Birthdate", with: @request.birthdate
    fill_in "City", with: @request.city
    fill_in "Country", with: @request.country
    fill_in "Name", with: @request.name
    fill_in "Reason", with: @request.reason
    fill_in "State", with: @request.state
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "should destroy Request" do
    visit request_url(@request)
    click_on "Destroy this request", match: :first

    assert_text "Request was successfully destroyed"
  end
end
