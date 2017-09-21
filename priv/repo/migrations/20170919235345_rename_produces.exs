defmodule Documentr2.Repo.Migrations.RenameProduces do
  use Ecto.Migration

  def up do
    alter table(:paths) do
      remove :produces
      add :response_type, :string
    end
  end
end
