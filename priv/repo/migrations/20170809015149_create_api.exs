defmodule Documentr2.Repo.Migrations.CreateApi do
  use Ecto.Migration

  def change do
    create table(:apis) do
      add :basePath, :string
      add :definitions, :string
      add :paths, Documentr2.Path

      timestamps()
    end

  end
end
