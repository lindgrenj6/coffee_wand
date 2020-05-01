defmodule CovfefeTest do
  use ExUnit.Case
  doctest Covfefe

  test "greets the world" do
    assert Covfefe.hello() == :world
  end
end
