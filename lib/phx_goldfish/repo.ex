defmodule PhxGoldfish.Repo do
  use Ecto.Repo,
    otp_app: :phx_goldfish,
    adapter: Ecto.Adapters.Postgres
end
