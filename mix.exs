defmodule PyCryptX.Mixfile do
  use Mix.Project

  def project do
    [app: :py_cryptx,
     version: "0.0.1",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     source_url: "https://github.com/thomasdola/py_cryptx",
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger],
     mod: {PyCryptX.Application, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:piton, "~> 0.2.0"},
      {:junit_formatter, ">= 0.0.0", only: :test},
      {:mix_test_watch, "~> 0.3", only: :dev, runtime: false, override: true},
      {:doc_first_formatter, "~> 0.0.1", only: :test},
      {:ex_unit_notifier, "~> 0.1", only: :test}
    ]
  end

  defp description do
    """
    A Simple Wrapper for Python Bcrypt Module
    """
  end

  defp package do
    # These are the default files included in the package
    [
      name: :py_cryptx,
      maintainers: ["Thomas Paul"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/thomasdola/py_cryptx"}
    ]
  end
end
