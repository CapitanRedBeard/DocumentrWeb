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
alias Documentr2.Parameter
alias Documentr2.Responses
alias Documentr2.Api

api = Repo.insert! %Api{
    basePath: "v1",
    definitions: "none",
}

# IO.inspect Ecto.assoc(api, :paths) |> Repo.all
path1 = Repo.insert! %Path{api_id: api.id, route: "/account", description: "Grabs the account", produces: "application/json", type: "get"}

Repo.insert! %Parameter{path_id: path1.id, key: "account_id", type: "UUID"}
Repo.insert! %Parameter{path_id: path1.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: path1.id, key: "name", type: "string"}

Repo.insert! %Responses{path_id: path1.id, code: 200, description: "Successfully retrieved account"}
Repo.insert! %Responses{path_id: path1.id, code: 404, description: "Cannot find account"}
Repo.insert! %Responses{path_id: path1.id, code: 400, description: "Invalid account id supplied"}

#
# path2 = Repo.insert! %Path{api_id: api.id, route: "/conversations", description: "Posts a conversations", produces: "application/json", type: "post"}
# path3 = Repo.insert! %Path{api_id: api.id, route: "/messages", description: "Updates the messages", produces: "application/json", type: "put"}
# IO.inspect Ecto.assoc(api, :paths) |> Repo.all


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
