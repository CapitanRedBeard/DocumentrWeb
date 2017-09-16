defmodule Documentr2.ApiController do
  use Documentr2.Web, :controller

  alias Documentr2.Api

  def index(conn, _params) do
    apis = Repo.all(Api) |> Repo.preload(:paths)
    render conn, "index.html", apis: apis
  end

  def new(conn, _params) do
    changeset = Api.changeset(%Api{})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"api" => api_params}) do
    changeset = Api.changeset(%Api{}, api_params)
    case Repo.insert(changeset) do
      {:ok, api} ->
        conn
        |> put_flash(:info, "Api created!")
        |> redirect(to: api_path(conn, :index))
      {:error, changeset} ->
        conn
        |> render("new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    api = Repo.get(Api, id) |> Repo.preload(:paths)
    render conn, "show.html", api: api
  end
end
