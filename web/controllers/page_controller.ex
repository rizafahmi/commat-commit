defmodule CommatCommit.PageController do
  use CommatCommit.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
