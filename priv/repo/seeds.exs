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
alias Documentr2.Return
alias Documentr2.Api



api = Repo.insert! %Api{basePath: "v1", name: "blog api", api_key: UUID.uuid1()}

account1 = Repo.insert! %Path{api_id: api.id, url: "/account", description: "Grabs the account", response_type: "application/json", method: "get"}
Repo.insert! %Return{path_id: account1.id, key: "account_id", type: "UUID"}
Repo.insert! %Return{path_id: account1.id, key: "membership_name", type: "string"}
Repo.insert! %Return{path_id: account1.id, key: "name", type: "string"}

account2 = Repo.insert! %Path{api_id: api.id, url: "/account", description: "Creates a new account", response_type: "application/json", method: "post"}
Repo.insert! %Parameter{path_id: account2.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: account2.id, key: "name", type: "string"}

account3 = Repo.insert! %Path{api_id: api.id, url: "/account", description: "Creates a new account", response_type: "application/json", method: "put"}
Repo.insert! %Parameter{path_id: account3.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: account3.id, key: "name", type: "string"}

post1 = Repo.insert! %Path{api_id: api.id, url: "/post", description: "Grabs the post", response_type: "application/json", method: "get"}
Repo.insert! %Return{path_id: post1.id, key: "post_id", type: "UUID"}
Repo.insert! %Return{path_id: post1.id, key: "membership_name", type: "string"}
Repo.insert! %Return{path_id: post1.id, key: "name", type: "string"}

post2 = Repo.insert! %Path{api_id: api.id, url: "/post", description: "Creates a new post", response_type: "application/json", method: "post"}
Repo.insert! %Parameter{path_id: post2.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: post2.id, key: "name", type: "string"}

post3 = Repo.insert! %Path{api_id: api.id, url: "/post", description: "Creates a new post", response_type: "application/json", method: "put"}
Repo.insert! %Parameter{path_id: post3.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: post3.id, key: "name", type: "string"}

post4 = Repo.insert! %Path{api_id: api.id, url: "/post", description: "Creates a new post", response_type: "application/json", method: "delete"}
Repo.insert! %Parameter{path_id: post4.id, key: "post_id", type: "string"}
comment1 = Repo.insert! %Path{api_id: api.id, url: "/comment", description: "Grabs the comment", response_type: "application/json", method: "get"}
Repo.insert! %Return{path_id: comment1.id, key: "comment_id", type: "UUID"}
Repo.insert! %Return{path_id: comment1.id, key: "membership_name", type: "string"}
Repo.insert! %Return{path_id: comment1.id, key: "name", type: "string"}

comment2 = Repo.insert! %Path{api_id: api.id, url: "/comment", description: "Creates a new comment", response_type: "application/json", method: "post"}
Repo.insert! %Parameter{path_id: comment2.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: comment2.id, key: "name", type: "string"}

comment3 = Repo.insert! %Path{api_id: api.id, url: "/comment", description: "Creates a new comment", response_type: "application/json", method: "put"}
Repo.insert! %Parameter{path_id: comment3.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: comment3.id, key: "name", type: "string"}

comment4 = Repo.insert! %Path{api_id: api.id, url: "/comment", description: "Creates a new comment", response_type: "application/json", request_type: "application/json", method: "delete"}
Repo.insert! %Parameter{path_id: comment4.id, key: "comment_id", type: "string"}
