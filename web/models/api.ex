defmodule Documentr2.Api do
  use Documentr2.Web, :model

  @derive {Poison.Encoder, only: [:basePath, :definitions, :paths]}
  schema "apis" do
    field :basePath, :string
    field :definitions, :string
    has_many :paths, Documentr2.Path

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:basePath])
    |> validate_required([:basePath])
  end
end
