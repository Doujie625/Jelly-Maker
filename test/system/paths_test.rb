require "application_system_test_case"

class PathsTest < ApplicationSystemTestCase
  setup do
    @path = paths(:one)
  end

  test "visiting the index" do
    visit paths_url
    assert_selector "h1", text: "Paths"
  end

  test "should create path" do
    visit paths_url
    click_on "New path"

    fill_in "Class element", with: @path.class_element
    fill_in "D element", with: @path.d_element
    fill_in "Id element", with: @path.id_element
    fill_in "Sprite", with: @path.sprite_id
    click_on "Create Path"

    assert_text "Path was successfully created"
    click_on "Back"
  end

  test "should update Path" do
    visit path_url(@path)
    click_on "Edit this path", match: :first

    fill_in "Class element", with: @path.class_element
    fill_in "D element", with: @path.d_element
    fill_in "Id element", with: @path.id_element
    fill_in "Sprite", with: @path.sprite_id
    click_on "Update Path"

    assert_text "Path was successfully updated"
    click_on "Back"
  end

  test "should destroy Path" do
    visit path_url(@path)
    click_on "Destroy this path", match: :first

    assert_text "Path was successfully destroyed"
  end
end
