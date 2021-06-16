defmodule NimbleSchoolWeb.BlogController do

  use NimbleSchoolWeb, :controller
  alias NimbleSchool.Blog
  alias NimbleSchool.Faq

  def index(conn, _params) do
    render(conn, "index.html", posts: Blog.all_posts())
  end

  def show(conn, %{"id" => id}) do
    render(conn, "show.html", post: Blog.get_post_by_id!(id))
  end

  def showtag(conn, %{"tag" => tag}) do
    render(conn, "showtag.html", posts: Blog.get_posts_by_tag!(tag))
  end

  def showfaq(conn, %{"id" => id}) do
    render(conn, "show.html", post: Faq.get_post_by_id!(id))
  end



 end
