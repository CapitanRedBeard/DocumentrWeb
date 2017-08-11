defmodule Documentr2.ApiView do
  use Documentr2.Web, :view

  def render("index.json", %{apis: apis}) do
    %{
      apis: Enum.map(apis, &api_json/1)
    }
  end

  def api_json(api) do
    %{
      basePath: api.basePath,
      definitions: api.definitions,
      paths: api.paths,
      inserted_at: api.inserted_at,
      updated_at: api.updated_at
    }
  end
end
