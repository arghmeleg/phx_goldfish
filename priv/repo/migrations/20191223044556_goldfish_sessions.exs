defmodule PhxGoldfish.Repo.Migrations.GoldfishSessions do
  use Ecto.Migration

  def change do
    create table("goldfish_sessions") do
      add :cookie, :string
      add :data, :map

      timestamps()
    end

    create index("goldfish_sessions", ["cookie"])

  end
end
