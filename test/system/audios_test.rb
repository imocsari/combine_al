require "application_system_test_case"

class AudiosTest < ApplicationSystemTestCase
  setup do
    @audio = audios(:one)
  end

  test "visiting the index" do
    visit audios_url
    assert_selector "h1", text: "Audios"
  end

  test "creating a Audio" do
    visit audios_url
    click_on "New Audio"

    fill_in "End time", with: @audio.end_time
    fill_in "Start time", with: @audio.start_time
    click_on "Create Audio"

    assert_text "Audio was successfully created"
    click_on "Back"
  end

  test "updating a Audio" do
    visit audios_url
    click_on "Edit", match: :first

    fill_in "End time", with: @audio.end_time
    fill_in "Start time", with: @audio.start_time
    click_on "Update Audio"

    assert_text "Audio was successfully updated"
    click_on "Back"
  end

  test "destroying a Audio" do
    visit audios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Audio was successfully destroyed"
  end
end
