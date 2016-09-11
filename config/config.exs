# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :remind_to_contribute,
  ecto_repos: [RemindToContribute.Repo]

# Configures the endpoint
config :remind_to_contribute, RemindToContribute.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "isRk6sokfKa+2pjnogOP36/GtIyea+GhIxKHOr07G1dNeWADMBgRBybD2R0rjndu",
  render_errors: [view: RemindToContribute.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RemindToContribute.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
