defmodule Documentr2.Path do
  use Documentr2.Web, :model

  schema "paths" do
    belongs_to :apis, Documentr2.Api, references: :apis_id
    field :route, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:route])
    |> validate_required([:route])
  end
end
