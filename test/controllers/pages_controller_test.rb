require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "landing page links to both worlds" do
    get root_path
    assert_response :success
    assert_select "a[href=?]", code_path
    assert_select "a[href=?]", dance_path
  end

  test "code page renders services and projects" do
    get code_path
    assert_response :success
    assert_select "h1", /Websites with/
    assert_select ".service", 3
    assert_select ".work-row", 6
  end

  test "dance page renders performances" do
    get dance_path
    assert_response :success
    assert_select ".perf", 3
  end

  test "now page still renders" do
    get now_path
    assert_response :success
  end

  test "old pages redirect to the new ones" do
    get "/about"
    assert_redirected_to "/code#about"
    get "/projects"
    assert_redirected_to "/code#work"
    get "/garden"
    assert_redirected_to "/dance"
  end
end
