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
      url: path.url,
      description: path.description,
      response_type: path.response_type,
      request_type: path.request_type,
      method: path.method,
      response_payload: path.response_payload,
      request_payload: path.request_payload,
      parameters: path.parameters,
      returns: path.returns}
  end
end
