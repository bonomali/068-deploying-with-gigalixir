# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :teacher,
  ecto_repos: [Teacher.Repo]

# Configures the endpoint
config :teacher, TeacherWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "11ABbGC5+3h+SVja5LT0YQlo2lhSIGg4R4c6I8ZmugWq+GcGjSmzjMCBy6yUA21m",
  render_errors: [view: TeacherWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Teacher.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
