defmodule Publish2ensIpfs.MixProject do
  use Mix.Project

  def project do
    [
      app: :publish2ens_ipfs,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: [main_module: Publish2ensIpfs]
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
    [
      {:cid, "~> 0.0.1"}
    ]
  end
end
