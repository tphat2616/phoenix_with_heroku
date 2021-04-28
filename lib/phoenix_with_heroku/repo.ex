defmodule PhoenixWithHeroku.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_with_heroku,
    adapter: Ecto.Adapters.Postgres
end
