defmodule AQRWeb.ACRAController do
	alias AQR.ACRA
	use AQRWeb, :controller

	def search(conn, %{"val" => val}) do
		# IOC.insp(val, "SEARCH VAL")
		json conn, ACRA.search(val)
	end
end
