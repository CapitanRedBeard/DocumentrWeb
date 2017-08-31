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
alias Documentr2.Responses
alias Documentr2.Api



api = Repo.insert! %Api{basePath: "v1", definitions: "none"}

account1 = Repo.insert! %Path{api_id: api.id, route: "/account", description: "Grabs the account", produces: "application/json", type: "get"}
Repo.insert! %Return{path_id: account1.id, key: "account_id", type: "UUID"}
Repo.insert! %Return{path_id: account1.id, key: "membership_name", type: "string"}
Repo.insert! %Return{path_id: account1.id, key: "name", type: "string"}
Repo.insert! %Responses{path_id: account1.id, code: 200, description: "Successfully retrieved an account"}
Repo.insert! %Responses{path_id: account1.id, code: 404, description: "Cannot find account"}
Repo.insert! %Responses{path_id: account1.id, code: 400, description: "Invalid account id supplied"}

account2 = Repo.insert! %Path{api_id: api.id, route: "/account", description: "Creates a new account", produces: "application/json", type: "post"}
Repo.insert! %Parameter{path_id: account2.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: account2.id, key: "name", type: "string"}
Repo.insert! %Responses{path_id: account2.id, code: 200, description: "Successfully created an account"}
Repo.insert! %Responses{path_id: account2.id, code: 400, description: "Invalid account id supplied"}

account3 = Repo.insert! %Path{api_id: api.id, route: "/account", description: "Creates a new account", produces: "application/json", type: "put"}
Repo.insert! %Parameter{path_id: account3.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: account3.id, key: "name", type: "string"}
Repo.insert! %Responses{path_id: account3.id, code: 200, description: "Successfully altered an account"}
Repo.insert! %Responses{path_id: account3.id, code: 400, description: "Invalid account id supplied"}

post1 = Repo.insert! %Path{api_id: api.id, route: "/post", description: "Grabs the post", produces: "application/json", type: "get"}
Repo.insert! %Return{path_id: post1.id, key: "post_id", type: "UUID"}
Repo.insert! %Return{path_id: post1.id, key: "membership_name", type: "string"}
Repo.insert! %Return{path_id: post1.id, key: "name", type: "string"}
Repo.insert! %Responses{path_id: post1.id, code: 200, description: "Successfully retrieved a post"}
Repo.insert! %Responses{path_id: post1.id, code: 404, description: "Cannot find post"}
Repo.insert! %Responses{path_id: post1.id, code: 400, description: "Invalid post id supplied"}

post2 = Repo.insert! %Path{api_id: api.id, route: "/post", description: "Creates a new post", produces: "application/json", type: "post"}
Repo.insert! %Parameter{path_id: post2.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: post2.id, key: "name", type: "string"}
Repo.insert! %Responses{path_id: post2.id, code: 200, description: "Successfully created a post"}
Repo.insert! %Responses{path_id: post2.id, code: 400, description: "Invalid post id supplied"}

post3 = Repo.insert! %Path{api_id: api.id, route: "/post", description: "Creates a new post", produces: "application/json", type: "put"}
Repo.insert! %Parameter{path_id: post3.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: post3.id, key: "name", type: "string"}
Repo.insert! %Responses{path_id: post3.id, code: 200, description: "Successfully altered a post"}
Repo.insert! %Responses{path_id: post3.id, code: 400, description: "Invalid post id supplied"}

post4 = Repo.insert! %Path{api_id: api.id, route: "/post", description: "Creates a new post", produces: "application/json", type: "delete"}
Repo.insert! %Parameter{path_id: post4.id, key: "post_id", type: "string"}
Repo.insert! %Responses{path_id: post4.id, code: 200, description: "Successfully deleted a post"}
Repo.insert! %Responses{path_id: post4.id, code: 404, description: "Cannot find post"}

comment1 = Repo.insert! %Path{api_id: api.id, route: "/comment", description: "Grabs the comment", produces: "application/json", type: "get"}
Repo.insert! %Return{path_id: comment1.id, key: "comment_id", type: "UUID"}
Repo.insert! %Return{path_id: comment1.id, key: "membership_name", type: "string"}
Repo.insert! %Return{path_id: comment1.id, key: "name", type: "string"}
Repo.insert! %Responses{path_id: comment1.id, code: 200, description: "Successfully retrieved a comment"}
Repo.insert! %Responses{path_id: comment1.id, code: 404, description: "Cannot find comment"}
Repo.insert! %Responses{path_id: comment1.id, code: 400, description: "Invalid comment id supplied"}

comment2 = Repo.insert! %Path{api_id: api.id, route: "/comment", description: "Creates a new comment", produces: "application/json", type: "post"}
Repo.insert! %Parameter{path_id: comment2.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: comment2.id, key: "name", type: "string"}
Repo.insert! %Responses{path_id: comment2.id, code: 200, description: "Successfully created a comment"}
Repo.insert! %Responses{path_id: comment2.id, code: 400, description: "Invalid comment id supplied"}

comment3 = Repo.insert! %Path{api_id: api.id, route: "/comment", description: "Creates a new comment", produces: "application/json", type: "put"}
Repo.insert! %Parameter{path_id: comment3.id, key: "membership_name", type: "string"}
Repo.insert! %Parameter{path_id: comment3.id, key: "name", type: "string"}
Repo.insert! %Responses{path_id: comment3.id, code: 200, description: "Successfully altered a comment"}
Repo.insert! %Responses{path_id: comment3.id, code: 400, description: "Invalid comment id supplied"}

comment4 = Repo.insert! %Path{api_id: api.id, route: "/comment", description: "Creates a new comment", produces: "application/json", type: "delete"}
Repo.insert! %Parameter{path_id: comment4.id, key: "comment_id", type: "string"}
Repo.insert! %Responses{path_id: comment4.id, code: 200, description: "Successfully deleted a comment"}
Repo.insert! %Responses{path_id: comment4.id, code: 404, description: "Cannot find comment"}
