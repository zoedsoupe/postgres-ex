defmodule PostgREST.MixProject do
  use Mix.Project

  @source_url "https://github.com/zoedsoupe/supabase-postgrest"

  def project do
    [
      app: :supabase_postgrest,
      version: "0.1.2",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: docs(),
      description: description(),
      source_url: @source_url
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [{:supabase_potion, "~> 0.3.1"}, {:ex_doc, ">= 0.0.0", runtime: false}]
  end

  defp package do
    %{
      name: "supabase_postgrest",
      licenses: ["MIT"],
      contributors: ["zoedsoupe"],
      links: %{
        "GitHub" => @source_url,
        "Docs" => "https://hexdocs.pm/supabase_postgrest"
      },
      files: ~w[lib mix.exs README.md LICENSE]
    }
  end

  defp docs do
    [
      main: "Supabase.PostgREST",
      extras: ["README.md"]
    ]
  end

  defp description do
    """
    High level Elixir client for Supabase PostgREST.
    """
  end
end
