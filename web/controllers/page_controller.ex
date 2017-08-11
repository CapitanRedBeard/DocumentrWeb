defmodule Documentr2.PageController do
  use Documentr2.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
