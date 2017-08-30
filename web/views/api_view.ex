defmodule Documentr2.ApiView do
  use Documentr2.Web, :view
  alias Documentr2.Path

  # def render("index.html", %{apis: apis}) do
  #   %{
  #     apis: Enum.map(apis, &api_json/1)
  #   }
  # end
  #
  # def api_json(api) do
  #   %{
  #     basePath: api.basePath,
  #     definitions: api.definitions,
  #     paths: api.paths,
  #     inserted_at: api.inserted_at,
  #     updated_at: api.updated_at
  #   }
  # end
  # def render("index.json", %{apis: apis}) do
  #   render_many(apis, __MODULE__, "api.json")
  # end
  #
  # def render("api.json", %{api: api}) do
  #   %{
  #     basePath: api.basePath,
  #     definitions: api.definitions,
  #     paths: api.paths
  #   }
  # end
  def side_bar_title() do
    "Available Api Paths: "
  end

  def get_versions(apis) do
    apis
  end

  def get_paths(api) do
    api
    |> Map.get(:paths)
  end

  def get_method_class(type) do
    "method #{type}"
  end

end

#
# defmodule HelloPhoenix.UserView do
#   use HelloPhoenix.Web, :view
#   alias HelloPhoenix.User
#   def first_name(%User{name: name}) do
#     name
#     |> String.split(" ")
#     |> Enum.at(0)
#   end
# end
