require "application_system_test_case"

class NewsTest < ApplicationSystemTestCase
  setup do
    @news = news(:one)
    @admin_user = users(:two) # Usuario con rol de administrador
    sign_in @admin_user # Iniciar sesión con el usuario administrador antes de cada prueba
  end
  

  test "visiting the index" do
    visit news_url
    assert_selector "h1", text: "News"
  end

  test "should create news" do
    visit news_url
    click_on "New news"

    fill_in "Content", with: @news.content
    fill_in "Title", with: @news.title
    fill_in "User", with: @news.user_id
    click_on "Create News"

    assert_text "News was successfully created"
    click_on "Back"
  end

  test "should update News" do
    visit news_url(@news)
    click_on "Edit this news", match: :first

    fill_in "Content", with: @news.content
    fill_in "Title", with: @news.title
    fill_in "User", with: @news.user_id
    click_on "Update News"

    assert_text "News was successfully updated"
    click_on "Back"
  end

  test "should destroy News" do
    visit news_url(@news)
    click_on "Destroy this news", match: :first

    assert_text "News was successfully destroyed"
  end
end
