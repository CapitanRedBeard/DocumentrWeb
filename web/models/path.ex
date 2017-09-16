defmodule Documentr2.Path do
  use Documentr2.Web, :model

  @derive {Poison.Encoder, except: [:__meta__]}
  schema "paths" do
    belongs_to :api, Documentr2.Api
    field :route, :string
    field :description, :string
    field :produces, :string
    field :type, :string
    has_many :responses, Documentr2.Responses
    has_many :parameters, Documentr2.Parameter
    has_many :returns, Documentr2.Parameter

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:api_id, :route, :type, :description, :produces])
    |> validate_required([:api_id, :route, :type])
    |> assoc_constraint(:api_id)
  end
end
