defmodule CommatCommit.GitHubFetcher do

  def get_data do
    # token = Application.get_env(:commat_commit, GitHub)
    # client = Tentacat.Client.new(%{access_token: token[:token]})
    # process_data Tentacat.Users.Events.list("rizafahmi", client)
    process_data [%{"actor" => %{"avatar_url" => "https://avatars.githubusercontent.com/u/1147918?", "display_login" => "rizafahmi", "gravatar_id" => "", "id" => 1147918, "login" => "rizafahmi", "url" => "https://api.github.com/users/rizafahmi"}, "created_at" => "2016-09-11T10:57:37Z", "id" => "4545639295", "payload" => %{"before" => "aea2d0c20638fdd37f4bfceca4104ef13a8e6b9f", "commits" => [%{"author" => %{"email" => "rizafahmi@gmail.com", "name " => "Riza Fahmi"}, "distinct" => true, "message" => "Return the real list", "sha" => "dc837c6dbdba981e31af91bd95a8ddeddd21bdc8", "url" => "https://api.github.com/repos/rizafahmi/remind-to-contribute/commits/dc837c6dbdba981e31af91bd95a8ddeddd21bdc8"}], "distinct_size" => 1, "head" => "dc837c6dbdba981e31af91bd95a8ddeddd21bdc8", "push_id" => 1292698965, "ref" => "refs/heads/master", "size" => 1}, "public" => true, "repo" => %{"id" => 67924453, "name" => "rizafahmi/remind-to-contribute", "url" => "https://api.github.com/repos/rizafahmi/remind-to-contribute"}, "type" => "PushEvent"}]
  end

  defp process_data(event_list) do
    event = Enum.at(event_list, 0)
    IO.inspect Map.fetch!(event, "type")
    event_list
  end

end
