defmodule Documentr2.Repo.Migrations.AddToPaths do
  use Ecto.Migration

  def up do
    alter table(:paths) do
      add :description, :string
      add :produces, :string
      add :type, :string
    end
  end
end
