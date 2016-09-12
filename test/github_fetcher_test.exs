defmodule CommatCommit.GitHubFetcherTest do
  use CommatCommit.ConnCase
  use ExUnit.Case

  alias CommatCommit.GitHubFetcher, as: GitHubFetcher

  test "Get GitHub data" do
    actual = GitHubFetcher.get_data
    assert is_list(actual) == true
  end
end
