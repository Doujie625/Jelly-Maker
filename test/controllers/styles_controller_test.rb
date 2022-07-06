require "test_helper"

class StylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @style = styles(:one)
  end

  test "should get index" do
    get styles_url
    assert_response :success
  end

  test "should get new" do
    get new_style_url
    assert_response :success
  end

  test "should create style" do
    assert_difference("Style.count") do
      post styles_url, params: { style: { fill: @style.fill, fill_opacity: @style.fill_opacity, opacity: @style.opacity, stroke: @style.stroke, stroke_fill: @style.stroke_fill, stroke_width: @style.stroke_width } }
    end

    assert_redirected_to style_url(Style.last)
  end

  test "should show style" do
    get style_url(@style)
    assert_response :success
  end

  test "should get edit" do
    get edit_style_url(@style)
    assert_response :success
  end

  test "should update style" do
    patch style_url(@style), params: { style: { fill: @style.fill, fill_opacity: @style.fill_opacity, opacity: @style.opacity, stroke: @style.stroke, stroke_fill: @style.stroke_fill, stroke_width: @style.stroke_width } }
    assert_redirected_to style_url(@style)
  end

  test "should destroy style" do
    assert_difference("Style.count", -1) do
      delete style_url(@style)
    end

    assert_redirected_to styles_url
  end
end
