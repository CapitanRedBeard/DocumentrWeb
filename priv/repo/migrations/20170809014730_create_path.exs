defmodule Documentr2.Repo.Migrations.CreatePath do
  use Ecto.Migration

  def change do
    create table(:paths) do
      add :api_id, :string
      add :route, :string

      timestamps()
    end

  end
end
