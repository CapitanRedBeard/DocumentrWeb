defmodule Documentr2.Repo.Migrations.RenameParamsType do
  use Ecto.Migration

  def up do
    alter table(:parameters) do
      remove :type
      add :value, :string
    end
  end
end
