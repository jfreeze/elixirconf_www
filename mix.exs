defmodule ElixirconfWww.Mixfile do
  use Mix.Project

  def project do
    [ app: :elixirconf_www,
      version: "0.0.1",
      build_per_environment: true,
      dynamos: [ElixirconfWww.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { ElixirconfWww, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "~> 0.1.0-dev", github: "elixir-lang/dynamo" } ]
  end
end
