require "application_system_test_case"

class StylesTest < ApplicationSystemTestCase
  setup do
    @style = styles(:one)
  end

  test "visiting the index" do
    visit styles_url
    assert_selector "h1", text: "Styles"
  end

  test "should create style" do
    visit styles_url
    click_on "New style"

    fill_in "Fill", with: @style.fill
    fill_in "Fill opacity", with: @style.fill_opacity
    fill_in "Opacity", with: @style.opacity
    fill_in "Stroke", with: @style.stroke
    fill_in "Stroke fill", with: @style.stroke_fill
    fill_in "Stroke width", with: @style.stroke_width
    click_on "Create Style"

    assert_text "Style was successfully created"
    click_on "Back"
  end

  test "should update Style" do
    visit style_url(@style)
    click_on "Edit this style", match: :first

    fill_in "Fill", with: @style.fill
    fill_in "Fill opacity", with: @style.fill_opacity
    fill_in "Opacity", with: @style.opacity
    fill_in "Stroke", with: @style.stroke
    fill_in "Stroke fill", with: @style.stroke_fill
    fill_in "Stroke width", with: @style.stroke_width
    click_on "Update Style"

    assert_text "Style was successfully updated"
    click_on "Back"
  end

  test "should destroy Style" do
    visit style_url(@style)
    click_on "Destroy this style", match: :first

    assert_text "Style was successfully destroyed"
  end
end
