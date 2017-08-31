defmodule Documentr2.ReturnTest do
  use Documentr2.ModelCase

  alias Documentr2.Return

  @valid_attrs %{key: "some content", type: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Return.changeset(%Return{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Return.changeset(%Return{}, @invalid_attrs)
    refute changeset.valid?
  end
end
