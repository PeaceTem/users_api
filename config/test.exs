import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :users_api, UsersApi.Repo,
  username: "postgres",
  password: "@Ecclesiastes01?",
  hostname: "localhost",
  database: "users_api_dev",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :users_api, UsersApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "hXLE7VeT4iWwpWUwFSpzYYd3PDGkkoAszL6Jzw0fFJmyQsnz4Kcs3aAHr9IWLpqy",
  server: false

# In test we don't send emails.
config :users_api, UsersApi.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
