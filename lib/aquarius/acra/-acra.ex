defmodule AQR.ACRA do
	alias AQR.{Repo,ACRA.Entity}
	import Ecto.Query

	def search(val) do
		refine_intermed =
			val
			|> String.upcase
			|> String.replace("%", "\\%")
			|> String.replace(" ", "%")

		search_val = "%" <> refine_intermed <> "%"

		Entity
		|> where([e], like(e.entity_name, type(^search_val, :string)))
		|> Repo.all
	end
end
