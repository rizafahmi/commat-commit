defmodule RemindToContribute.PageController do
  use RemindToContribute.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
