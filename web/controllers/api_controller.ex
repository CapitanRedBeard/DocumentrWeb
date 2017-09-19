defmodule Documentr2.ApiController do
  use Documentr2.Web, :controller

  alias Documentr2.Api

  def index(conn, _params) do
    render conn, "index.html", apis: all_apis()
  end

  def new(conn, _params) do
    changeset = Api.changeset(%Api{}, generate_uuid())
    render conn, "new.html", changeset: changeset, apis: all_apis()
  end

  def create(conn, %{"api" => api_params}) do
    changeset = Api.changeset(%Api{}, Map.merge(api_params, generate_uuid()))
    case Repo.insert(changeset) do
      {:ok, api} ->
        conn
        |> put_flash(:info, "Api created!")
        |> redirect(to: api_path(conn, :index))
      {:error, changeset} ->
        conn
        |> render("new.html", changeset: changeset, apis: all_apis())
    end
  end

  def show(conn, %{"id" => id}) do
    api = Repo.get(Api, id) |> Repo.preload(:paths)
    render conn, "show.html", api: api, apis: all_apis()
  end

  defp all_apis() do
    Repo.all(Api)
      |> Repo.preload(:paths)
  end

  defp generate_uuid() do
    %{"api_key" => UUID.uuid1()}
  end
end
