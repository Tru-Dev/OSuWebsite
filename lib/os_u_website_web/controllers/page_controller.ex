defmodule OSuWebsiteWeb.PageController do
  use OSuWebsiteWeb, :controller

  def index(conn, _params) do
    conn = assign(conn, :page_title, "home")
    render(conn, "index.html")
  end

  def about(conn, _params) do
    conn = assign(conn, :page_title, "about")
    render(conn, "about.html")
  end
end
