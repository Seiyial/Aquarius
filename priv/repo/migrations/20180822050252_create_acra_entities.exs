defmodule AQR.Repo.Migrations.CreateAcraEntities do
  use Ecto.Migration

  def change do
    create table(:acra_entities) do
      add :entity_name, :string
      add :uen, :string
      add :reg_street_name, :string
      add :reg_postal_code, :string

      timestamps()
    end

  end
end
