defmodule Documentr2.ApiController do
  use Documentr2.Web, :controller

  alias Documentr2.Api

  def index(conn, _params) do
    apis = Repo.all(Api) |> Repo.preload(:paths)
    render conn, "index.html", apis: apis
  end

  def show(conn, %{"id" => id}) do
    api = Repo.get(Api, id) |> Repo.preload(:paths)
    render conn, "show.html", api: api
  end

  # def index(conn, _params) do
  #   users = Repo.all(User)
  #   render conn, "index.html", users: users
  # end
end
