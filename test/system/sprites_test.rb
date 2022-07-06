require "application_system_test_case"

class SpritesTest < ApplicationSystemTestCase
  setup do
    @sprite = sprites(:one)
  end

  test "visiting the index" do
    visit sprites_url
    assert_selector "h1", text: "Sprites"
  end

  test "should create sprite" do
    visit sprites_url
    click_on "New sprite"

    fill_in "Column", with: @sprite.column
    fill_in "Frame", with: @sprite.frame
    fill_in "Height", with: @sprite.height
    fill_in "Name", with: @sprite.name
    fill_in "Row", with: @sprite.row
    fill_in "Viewbox", with: @sprite.viewbox
    fill_in "Width", with: @sprite.width
    click_on "Create Sprite"

    assert_text "Sprite was successfully created"
    click_on "Back"
  end

  test "should update Sprite" do
    visit sprite_url(@sprite)
    click_on "Edit this sprite", match: :first

    fill_in "Column", with: @sprite.column
    fill_in "Frame", with: @sprite.frame
    fill_in "Height", with: @sprite.height
    fill_in "Name", with: @sprite.name
    fill_in "Row", with: @sprite.row
    fill_in "Viewbox", with: @sprite.viewbox
    fill_in "Width", with: @sprite.width
    click_on "Update Sprite"

    assert_text "Sprite was successfully updated"
    click_on "Back"
  end

  test "should destroy Sprite" do
    visit sprite_url(@sprite)
    click_on "Destroy this sprite", match: :first

    assert_text "Sprite was successfully destroyed"
  end
end
