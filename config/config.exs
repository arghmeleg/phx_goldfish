# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_goldfish,
  ecto_repos: [PhxGoldfish.Repo]

# Configures the endpoint
config :phx_goldfish, PhxGoldfishWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KJcE8i0AO1lWGCG4PD2G/yD/7C2vKOhVGXShQh3rTPSYrdQufewJH5ysK9bVO7Vc",
  render_errors: [view: PhxGoldfishWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxGoldfish.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
