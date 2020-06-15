require "application_system_test_case"

class FoldersTest < ApplicationSystemTestCase
  setup do
    @folder = folders(:one)
  end

  test "visiting the index" do
    visit folders_url
    assert_selector "h1", text: "Folders"
  end

  test "creating a Folder" do
    visit folders_url
    click_on "New Folder"

    fill_in "Advise", with: @folder.advise
    fill_in "Bp", with: @folder.bp
    fill_in "Complaints", with: @folder.complaints
    fill_in "Patient", with: @folder.patient_id
    fill_in "Pulse", with: @folder.pulse
    fill_in "Spo2", with: @folder.spo2
    fill_in "Temperature", with: @folder.temperature
    click_on "Create Folder"

    assert_text "Folder was successfully created"
    click_on "Back"
  end

  test "updating a Folder" do
    visit folders_url
    click_on "Edit", match: :first

    fill_in "Advise", with: @folder.advise
    fill_in "Bp", with: @folder.bp
    fill_in "Complaints", with: @folder.complaints
    fill_in "Patient", with: @folder.patient_id
    fill_in "Pulse", with: @folder.pulse
    fill_in "Spo2", with: @folder.spo2
    fill_in "Temperature", with: @folder.temperature
    click_on "Update Folder"

    assert_text "Folder was successfully updated"
    click_on "Back"
  end

  test "destroying a Folder" do
    visit folders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Folder was successfully destroyed"
  end
end
