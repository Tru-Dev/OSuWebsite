FROM elixir:latest

WORKDIR /app

COPY mix.exs .
COPY mix.lock .

RUN mix do local.hex --force, local.rebar --force

CMD mix ecto.create && mix deps.get && mix phx.server
