defmodule NinetyNineElixirProblems.Mixfile do
  use Mix.Project

  def project do
    [app: :ninety_nine_elixir_problems,
     version: "0.0.1",
     name: "99 Elixir Problems",
     source_url: "https://github.com/abull/ninety_nine_elixir_problems",

     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.7", only: :dev}]
  end
end
