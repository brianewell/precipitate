defmodule Precipitate.CLI do
	def main(argv) do
		{options, _, _} = OptionParser.parse(argv,
			switches: [question: :string, verbose: :boolean],
			aliases: [q: :question]
		)

		IO.inspect options
	end
end
