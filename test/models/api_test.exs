defmodule Documentr2.ApiTest do
  use Documentr2.ModelCase

  alias Documentr2.Api

  @valid_attrs %{basePath: "some content", definitions: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Api.changeset(%Api{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Api.changeset(%Api{}, @invalid_attrs)
    refute changeset.valid?
  end
end
