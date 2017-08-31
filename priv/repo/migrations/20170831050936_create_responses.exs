defmodule Documentr2.Repo.Migrations.CreateResponses do
  use Ecto.Migration

  def change do
    create table(:responses) do
      add :code, :integer
      add :description, :string
      add :path_id, references(:paths, on_delete: :nothing)

      timestamps()
    end
    create index(:responses, [:path_id])

  end
end
