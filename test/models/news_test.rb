require "test_helper"

class NewsTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)  # Accede al usuario con el alias 'one' definido en las fixtures
  end

  test "should create news" do
    news = News.new(title: "Título de la noticia", content: "Contenido de la noticia", user: @user)
    assert news.save
  end

  test "should not create news without title" do
    news = News.new(title: nil, content: "Contenido de la noticia")
    assert_not news.save, "Saved the news without title"
  end  

  test "should not create news without content" do
    news = News.new(title: "Titulo de la noticia", content: nil)
    assert_not news.save, "Saved the news without content"
  end
end
