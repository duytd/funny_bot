# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :funny_bot,
  ecto_repos: [FunnyBot.Repo]

# Configures the endpoint
config :funny_bot, FunnyBot.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GaV2P7+1EW/Hp7vMCuCmceWtwsGiAk6/kmz4X2NVlAF3wPgYyE8RgUmB4M5a5IwF",
  render_errors: [view: FunnyBot.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FunnyBot.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :settings,
  available_locales: [:en, :fr, :de, :nl, :es, :ko, :ja, :vi]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
