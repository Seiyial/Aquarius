# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :aquarius,
  namespace: AQR,
  ecto_repos: [AQR.Repo]

# Configures the endpoint
config :aquarius, AQRWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Dno+QN/w5bb7Deukkj4+HTMslXrtyqXF26JIq8mRuLoPn7o6ois6xeJ3R0RDPNlA",
  render_errors: [view: AQRWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AQR.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
