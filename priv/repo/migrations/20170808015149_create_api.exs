defmodule Documentr2.Repo.Migrations.CreateApi do
  use Ecto.Migration

  def change do
    create table(:apis) do
      add :basePath, :string
      add :definitions, :string

      timestamps()
    end

  end
end
