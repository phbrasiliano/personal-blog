require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Une Fille"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get 'sobre'" do
    get sobre_path
    assert_response :success
    assert_select "title", "Sobre mim | #{@base_title}"
  end
end
