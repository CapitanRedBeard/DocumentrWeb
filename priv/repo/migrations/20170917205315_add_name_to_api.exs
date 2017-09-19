defmodule Documentr2.Repo.Migrations.AddNameToApi do
  use Ecto.Migration

  def up do
    alter table(:apis) do
      remove :definitions
      add :name, :string
      add :api_key, :string
    end
  end
end
