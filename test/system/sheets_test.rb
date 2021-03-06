require "application_system_test_case"

class SheetsTest < ApplicationSystemTestCase
  setup do
    @sheet = sheets(:one)
  end

  test "visiting the index" do
    visit sheets_url
    assert_selector "h1", text: "Sheets"
  end

  test "should create sheet" do
    visit sheets_url
    click_on "New sheet"

    fill_in "Columns", with: @sheet.columns
    fill_in "Frames", with: @sheet.frames
    fill_in "Reel height", with: @sheet.reel_height
    fill_in "Reel width", with: @sheet.reel_width
    fill_in "Rows", with: @sheet.rows
    fill_in "Sheet name", with: @sheet.sheet_name
    fill_in "Sheet size", with: @sheet.sheet_size
    click_on "Create Sheet"

    assert_text "Sheet was successfully created"
    click_on "Back"
  end

  test "should update Sheet" do
    visit sheet_url(@sheet)
    click_on "Edit this sheet", match: :first

    fill_in "Columns", with: @sheet.columns
    fill_in "Frames", with: @sheet.frames
    fill_in "Reel height", with: @sheet.reel_height
    fill_in "Reel width", with: @sheet.reel_width
    fill_in "Rows", with: @sheet.rows
    fill_in "Sheet name", with: @sheet.sheet_name
    fill_in "Sheet size", with: @sheet.sheet_size
    click_on "Update Sheet"

    assert_text "Sheet was successfully updated"
    click_on "Back"
  end

  test "should destroy Sheet" do
    visit sheet_url(@sheet)
    click_on "Destroy this sheet", match: :first

    assert_text "Sheet was successfully destroyed"
  end
end
