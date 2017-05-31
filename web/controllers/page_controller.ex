defmodule MaukoWWW.PageController do
  use MaukoWWW.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
