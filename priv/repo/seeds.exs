# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Documentr2.Repo.insert!(%Documentr2.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Documentr2.Repo
alias Documentr2.Path
alias Documentr2.Api

api = Repo.insert! %Api{
    basePath: "v1",
    definitions: "none",
}

IO.inspect Ecto.assoc(api, :paths) |> Repo.all
Repo.insert! %Path{api_id: api.id, route: "/account"}
IO.inspect Ecto.assoc(api, :paths) |> Repo.all


# api = %Api{
#   basePath: "v1",
#   definitions: "none",
#   paths: [
#     %Path{
#       api_id: 1,
#       route: "/account"
#     }
#   ]
# }

# Repo.insert! api
