defmodule Documentr2.PathView do
  use Documentr2.Web, :view

  def render("index.json", %{paths: paths}) do
    %{data: render_many(paths, Documentr2.PathView, "path.json")}
  end

  def render("show.json", %{path: path}) do
    %{data: render_one(path, Documentr2.PathView, "path.json")}
  end

  def render("path.json", %{path: path}) do
    %{id: path.id,
      route: path.route,
      description: path.description,
      produces: path.produces,
      type: path.type,
      responses: path.responses,
      parameters: path.parameters,
      returns: path.returns}
  end
end
