alias AQR.ACRA.Entity
alias AQR.Repo
alias NimbleCSV.RFC4180, as: CSVUtil

# Download the entities-with-unique-entity-number resource from datamall.gov.sg, extract it, then rename `entities-registered-with-acra.csv` to `ACRA.csv` and paste it into priv/repo/files. Then do `mix run priv/repo/seeds.exs`.

File.cwd!
|> Path.join("priv/repo/files/ACRA.csv")
|> IOC.insp("Hi")
|> File.stream!(read_ahead: 100_000)
|> CSVUtil.parse_stream
|> Stream.map(fn [uen, _agency, _uen_status, entity_name, _entity_type, _uen_issue_date, reg_street_name, reg_postal_code] -> 
		entity_attrs = %{
			uen: uen,
			entity_name: entity_name,
			reg_postal_code: reg_postal_code,
			reg_street_name: reg_street_name
		}
	end)
|> IOC.insp("HIHI")
|> Enum.map(fn x ->
		%Entity{}
		|> Entity.changeset(x)
		|> Repo.insert!
	end)