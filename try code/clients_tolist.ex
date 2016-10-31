defmodule ClientsTolist do
	def insert() do
	Mongo.insert_one(Mongoclient, "clients_test", %{"id" => List.to_string(Enum.take_random(48..57,5)),
	 "name" => to_string(Enum.take_random(?a..?z,5)),
	 "location_name" => %{ "location_id" => List.to_string(Enum.take_random(48..57,6)),	 "location_tag" => to_string(Enum.take_random(?a..?z,4))},
	 "lease_date" => List.to_string(Enum.take_random(48..57,2) ++ '/' ++ Enum.take_random(48..57,2) ++ '/' ++Enum.take_random(2000..2016,1)),
	 "phone" => List.to_string(Enum.take_random(48..57,10)),
	 "email" => to_string(Enum.take_random(?a..?z,7)++"@mail.com")})
	end
end