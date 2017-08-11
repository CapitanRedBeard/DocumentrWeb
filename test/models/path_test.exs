defmodule Documentr2.PathTest do
  use Documentr2.ModelCase

  alias Documentr2.Path

  @valid_attrs %{route: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Path.changeset(%Path{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Path.changeset(%Path{}, @invalid_attrs)
    refute changeset.valid?
  end
end
