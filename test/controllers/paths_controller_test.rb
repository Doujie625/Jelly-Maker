require "test_helper"

class PathsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @path = paths(:one)
  end

  test "should get index" do
    get paths_url
    assert_response :success
  end

  test "should get new" do
    get new_path_url
    assert_response :success
  end

  test "should create path" do
    assert_difference("Path.count") do
      post paths_url, params: { path: { class_element: @path.class_element, d_element: @path.d_element, id_element: @path.id_element, sprite_id: @path.sprite_id } }
    end

    assert_redirected_to path_url(Path.last)
  end

  test "should show path" do
    get path_url(@path)
    assert_response :success
  end

  test "should get edit" do
    get edit_path_url(@path)
    assert_response :success
  end

  test "should update path" do
    patch path_url(@path), params: { path: { class_element: @path.class_element, d_element: @path.d_element, id_element: @path.id_element, sprite_id: @path.sprite_id } }
    assert_redirected_to path_url(@path)
  end

  test "should destroy path" do
    assert_difference("Path.count", -1) do
      delete path_url(@path)
    end

    assert_redirected_to paths_url
  end
end
