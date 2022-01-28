defmodule OSuWebsite.Repo do
  use Ecto.Repo,
    otp_app: :os_u_website,
    adapter: Ecto.Adapters.Postgres
end
