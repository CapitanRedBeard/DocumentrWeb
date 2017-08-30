defmodule Documentr2.Router do
  use Documentr2.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Documentr2 do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end


  # scope "/api", Documentr2 do
  #   pipe_through :api
  #
  #   resources "/", ApiController, only: [:index]
  # end

  scope "/api", Documentr2 do
    pipe_through :browser

    resources "/", ApiController, only: [:index, :show]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Documentr2 do
  #   pipe_through :api
  # end
end
