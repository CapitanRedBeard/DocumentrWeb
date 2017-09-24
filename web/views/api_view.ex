defmodule Documentr2.ApiView do
  use Documentr2.Web, :view
  alias Documentr2.Path

  def side_bar_title() do
    "Routes"
  end

  def definition_title() do
    "Route Definitions"
  end

  def get_versions(apis) do
    apis
  end

  def get_paths(api) do
    api
    |> Map.get(:paths)
  end

  def get_parameters(path) do
    path
    |> Documentr2.Repo.preload(:parameters)
    |> Map.get(:parameters)
  end

  def get_returns(path) do
    path
    |> Documentr2.Repo.preload(:returns)
    |> Map.get(:returns)
  end

  def get_method_class(type) do
    "method #{type}"
  end

  def get_definition_container_class(type) do
    "#{type}"
  end

  def has_value(dict, field) do
    Map.has_key?(dict, field)
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
