require "test_helper"

class SpritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sprite = sprites(:one)
  end

  test "should get index" do
    get sprites_url
    assert_response :success
  end

  test "should get new" do
    get new_sprite_url
    assert_response :success
  end

  test "should create sprite" do
    assert_difference("Sprite.count") do
      post sprites_url, params: { sprite: { column: @sprite.column, frame: @sprite.frame, height: @sprite.height, name: @sprite.name, row: @sprite.row, viewbox: @sprite.viewbox, width: @sprite.width } }
    end

    assert_redirected_to sprite_url(Sprite.last)
  end

  test "should show sprite" do
    get sprite_url(@sprite)
    assert_response :success
  end

  test "should get edit" do
    get edit_sprite_url(@sprite)
    assert_response :success
  end

  test "should update sprite" do
    patch sprite_url(@sprite), params: { sprite: { column: @sprite.column, frame: @sprite.frame, height: @sprite.height, name: @sprite.name, row: @sprite.row, viewbox: @sprite.viewbox, width: @sprite.width } }
    assert_redirected_to sprite_url(@sprite)
  end

  test "should destroy sprite" do
    assert_difference("Sprite.count", -1) do
      delete sprite_url(@sprite)
    end

    assert_redirected_to sprites_url
  end
end
