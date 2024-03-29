defmodule Documentr2.Return do
  use Documentr2.Web, :model

  schema "returns" do
    field :key, :string
    field :type, :string
    belongs_to :path, Documentr2.Path

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:key, :type])
    |> validate_required([:key, :type])
  end
end
