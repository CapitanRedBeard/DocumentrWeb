defmodule Documentr2.Responses do
  use Documentr2.Web, :model

  schema "responses" do
    field :code, :integer
    field :description, :string
    belongs_to :path, Documentr2.Path

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:code, :description])
    |> validate_required([:code, :description])
  end
end
