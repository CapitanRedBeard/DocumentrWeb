defmodule Documentr2.ResponsesTest do
  use Documentr2.ModelCase

  alias Documentr2.Responses

  @valid_attrs %{code: 42, description: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Responses.changeset(%Responses{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Responses.changeset(%Responses{}, @invalid_attrs)
    refute changeset.valid?
  end
end
