defmodule Documentr2.ApiController do
  use Documentr2.Web, :controller

  alias Documentr2.Api

  def index(conn, _params) do
    apis = Repo.all(Api) |> Repo.preload(:paths)
    render conn, "index.json", apis: apis
  end
end
