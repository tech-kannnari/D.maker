require 'test_helper'

class DinnersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dinners_index_url
    assert_response :success
  end

end
