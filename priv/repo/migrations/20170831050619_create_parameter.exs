defmodule Documentr2.Repo.Migrations.CreateParameter do
  use Ecto.Migration

  def change do
    create table(:parameters) do
      add :key, :string
      add :type, :string
      add :path_id, references(:paths, on_delete: :nothing)

      timestamps()
    end
    create index(:parameters, [:path_id])

  end
end
