Dynamo.under_test(ElixirconfWww.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule ElixirconfWww.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
