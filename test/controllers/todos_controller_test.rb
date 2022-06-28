require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  test "should get todo_app" do
    get todos_todo_app_url
    assert_response :success
  end
end
