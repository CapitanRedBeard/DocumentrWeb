defmodule Documentr2.Repo.Migrations.ModifyVarcharToTextPaths do
  use Ecto.Migration

  def up do
    alter table(:paths) do
      modify :url, :text
      modify :description, :text
      modify :response_payload, :text
      modify :request_payload, :text
    end
  end
end
