defmodule Documentr2.PathController do
  use Documentr2.Web, :controller

  alias Documentr2.Path

  plug :scrub_params, "path" when action in [:create, :update]

  def index(conn, _params) do
    paths = Repo.all(Path) |> Repo.preload(:parameters) |> Repo.preload(:responses) |> Repo.preload(:returns)
    render(conn, "index.json", paths: paths)
  end

  def create(conn, %{"path" => path_params}) do
    # parse(path_params)
    path = %Path{} |> Repo.preload(:parameters) |> Repo.preload(:responses) |> Repo.preload(:returns)
    changeset = Path.changeset(path, path_params)

    case Repo.insert(changeset) do
      {:ok, path} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", path_path(conn, :show, path))
        |> render("show.json", path: path)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(RestApi.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    path = Repo.get!(Path, id) |> Repo.preload(:parameters) |> Repo.preload(:responses) |> Repo.preload(:returns)
    render(conn, "show.json", path: path)
  end

  def update(conn, %{"id" => id, "path" => path_params}) do
    path = Repo.get!(Path, id) |> Repo.preload(:parameters) |> Repo.preload(:responses) |> Repo.preload(:returns)
    changeset = Path.changeset(path, path_params)

    case Repo.update(changeset) do
      {:ok, path} ->
        render(conn, "show.json", path: path)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(RestApi.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    path = Repo.get!(Path, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(path)

    send_resp(conn, :no_content, "")
  end
end
