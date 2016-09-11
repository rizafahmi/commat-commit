defmodule RemindToContribute.GitHubFetcherTest do
  use RemindToContribute.ConnCase
  use ExUnit.Case

  alias RemindToContribute.GitHubFetcher, as: GitHubFetcher

  test "Get GitHub data" do
    actual = GitHubFetcher.get_data
    assert is_list(actual) == true
  end
end
