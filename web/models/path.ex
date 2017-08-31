defmodule Documentr2.Path do
  use Documentr2.Web, :model

  @derive {Poison.Encoder, only: [:route]}
  schema "paths" do
    belongs_to :api, Documentr2.Api
    field :route, :string
    field :description, :string
    field :produces, :string
    field :type, :string
    has_many :responses, Documentr2.Responses
    has_many :parameters, Documentr2.Parameter

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
