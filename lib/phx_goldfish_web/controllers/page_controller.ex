defmodule PhxGoldfishWeb.PageController do
  use PhxGoldfishWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
