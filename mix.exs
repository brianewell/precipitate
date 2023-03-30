defmodule Precipitate.MixProject do
	use Mix.Project

	def project do
		[
			app: :precipitate,
			version: "0.0.1",
			elixir: "~> 1.14",
			build_embedded: Mix.env == :prod,
			start_permanent: Mix.env() == :prod,
			escript: [main_module: Precipitate.CLI],
			description: description(),
			package: package(),
			deps: deps(),
			name: "Precipitate",
			source_url: "https://github.com/brianewell/precipitate"
		]
	end

	# Run "mix help compile.app" to learn about applications.
	def application do
		[
			extra_applications: [:logger]
		]
	end

	defp description do
		"""
		An agentless timeseries ingestion framework.
		"""
	end

	defp package do
		[
			licenses: ["MPL-2.0"],
			links: %{"GitHub" => "https://github.com/brianewell/precipitate"}
		]
	end

	# Run "mix help deps" to learn about dependencies.
	defp deps do
		[
			{:ex_doc, "~> 0.14", only: :dev, runtime: false}
			# {:dep_from_hexpm, "~> 0.3.0"},
			# {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
		]
	end
end
