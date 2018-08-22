defmodule AQR.ACRA.Entity do
  use Ecto.Schema
  import Ecto.Changeset


  schema "acra_entities" do
    field :entity_name, :string
    field :reg_postal_code, :string
    field :reg_street_name, :string
    field :uen, :string

    timestamps()
  end

  @doc false
  def changeset(entity, attrs) do
    entity
    |> cast(attrs, [:entity_name, :uen, :reg_street_name, :reg_postal_code])
    |> validate_required([:entity_name, :uen])
  end
end
