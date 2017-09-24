defmodule Documentr2.Repo.Migrations.RenamePathFields do
  use Ecto.Migration

  def up do
    alter table(:paths) do
      remove :type
      add :method, :string
      remove :route
      add :url, :string
      add :request_type, :string
      add :response_payload, :string
      add :request_payload, :string
    end
  end
end
