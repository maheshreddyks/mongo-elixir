@doc """
from list of maps to required word
 list_cursor |> Enum.map( &(&1["email"]))
 for user <- list_cursor do user["email"] end.
"""

defmodule MapName do
	def to_listings([head|tail],result) do
		to_listings(tail,result ++ [Map.fetch(head,"company")])
	end
	def to_listings([],result) do
		IO.inspect(result)
	end
end