defmodule OSuWebsite.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      OSuWebsite.Repo,
      # Start the Telemetry supervisor
      OSuWebsiteWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: OSuWebsite.PubSub},
      # Start the Endpoint (http/https)
      OSuWebsiteWeb.Endpoint
      # Start a worker by calling: OSuWebsite.Worker.start_link(arg)
      # {OSuWebsite.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: OSuWebsite.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    OSuWebsiteWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
