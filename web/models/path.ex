defmodule Documentr2.Path do
  use Documentr2.Web, :model

  @derive {Poison.Encoder, except: [:__meta__]}
  schema "paths" do
    belongs_to :api, Documentr2.Api
    field :url, :string
    field :description, :string
    field :response_type, :string
    field :request_type, :string
    field :request_payload, :string
    field :method, :string
    field :response_payload, :string
    has_many :parameters, Documentr2.Parameter
    has_many :returns, Documentr2.Parameter

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:route, :type, :description, :response_type, :api_id])
    |> validate_required([:route, :type])
  end
end
