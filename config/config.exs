# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_with_heroku,
  ecto_repos: [PhoenixWithHeroku.Repo]

# Configures the endpoint
config :phoenix_with_heroku, PhoenixWithHerokuWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xI4Ev3mFr1yubhYJFuDD2q5pU/7Iy8bg5iqXH2TAEcuBqya8Bv1Nw0/SCat+x4ex",
  render_errors: [view: PhoenixWithHerokuWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixWithHeroku.PubSub,
  live_view: [signing_salt: "sfr66jVh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
