require "test_helper"
<<<<<<< 22453e8327c61be0d3014e8a41d9d63413286d39

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
<<<<<<< af3850debda1368bb57e6d1dfbac5b808da6204b
    get root_path
=======
    get static_pages_home_url
=======
class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
>>>>>>> Finish static pages
>>>>>>> Finish static pages
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
<<<<<<< af3850debda1368bb57e6d1dfbac5b808da6204b
    get help_path
=======
<<<<<<< 22453e8327c61be0d3014e8a41d9d63413286d39
    get static_pages_help_url
=======
    get help_path
>>>>>>> Finish static pages
>>>>>>> Finish static pages
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
<<<<<<< af3850debda1368bb57e6d1dfbac5b808da6204b
    get about_path
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
=======
<<<<<<< 22453e8327c61be0d3014e8a41d9d63413286d39
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
=======
    get about_path
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
>>>>>>> Finish static pages

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end
<<<<<<< af3850debda1368bb57e6d1dfbac5b808da6204b
=======
>>>>>>> Finish static pages
>>>>>>> Finish static pages
end
