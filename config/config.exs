# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :mauko_me, MaukoMe.Web.Endpoint,
  url: [host: "127.0.0.1"],
  secret_key_base: "jvF2ogDIP6upMYCRGRoRz1vqg3vjHwQ1hXVALrMdmwQTeJIuDtUZsghSQdKelsQd",
  render_errors: [view: MaukoMe.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MaukoMe.Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
