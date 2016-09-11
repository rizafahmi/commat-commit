defmodule RemindToContribute.GitHubFetcher do

  def get_data do
    token = Application.get_env(:remind_to_contribute, GitHub)
    client = Tentacat.Client.new(%{access_token: token[:token]})
    process_data Tentacat.Users.Events.list("rizafahmi", client)
  end

  defp process_data(event_list) do
    event_list
  end

end
