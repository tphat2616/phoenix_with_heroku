# In this file, we load production configuration and secrets
# from environment variables. You can also hardcode secrets,
# although such is generally not recommended and you have to
# remember to add this file to your .gitignore.
use Mix.Config

database_url =
  "postgres://gypycobwxzzzum:ee3cfbf96c45956924e1895d17737ef96b9c41287861e629a6bd24454b0ace75@ec2-54-87-112-29.compute-1.amazonaws.com:5432/daeglnnh3tgf62"

config :phoenix_with_heroku, PhoenixWithHeroku.Repo,
  adapter: Ecto.Adapters.Postgres,
  ssl: true,
  url: database_url,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10")

secret_key_base = "xI4Ev3mFr1yubhYJFuDD2q5pU/7Iy8bg5iqXH2TAEcuBqya8Bv1Nw0/SCat+x4ex"

config :phoenix_with_heroku, PhoenixWithHerokuWeb.Endpoint,
  http: [
    port: String.to_integer(System.get_env("PORT") || "4000"),
    transport_options: [socket_opts: [:inet6]]
  ],
  secret_key_base: secret_key_base

# ## Using releases (Elixir v1.9+)
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start each relevant endpoint:
#
#     config :phoenix_with_heroku, PhoenixWithHerokuWeb.Endpoint, server: true
#
# Then you can assemble a release by calling `mix release`.
# See `mix help release` for more information.
