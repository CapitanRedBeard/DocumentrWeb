defmodule Documentr2.Repo.Migrations.CreateReturn do
  use Ecto.Migration

  def change do
    create table(:returns) do
      add :key, :string
      add :type, :string
      add :path_id, references(:paths, on_delete: :nothing)

      timestamps()
    end
    create index(:returns, [:path_id])

  end
end
