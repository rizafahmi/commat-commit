# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :commat_commit,
  ecto_repos: [CommatCommit.Repo]

# Configures the endpoint
config :commat_commit, CommatCommit.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "isRk6sokfKa+2pjnogOP36/GtIyea+GhIxKHOr07G1dNeWADMBgRBybD2R0rjndu",
  render_errors: [view: CommatCommit.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CommatCommit.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :commat_commit, GitHub,
  token: System.get_env("GITHUB_TOKEN")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
