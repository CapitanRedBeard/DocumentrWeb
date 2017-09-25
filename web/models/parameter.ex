defmodule Documentr2.Parameter do
  use Documentr2.Web, :model

  @derive {Poison.Encoder, except: [:__meta__]}
  schema "parameters" do
    field :key, :string
    field :value, :string
    belongs_to :path, Documentr2.Path

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:key, :value])
    |> validate_required([:key, :value])
  end
end
