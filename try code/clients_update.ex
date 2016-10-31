defmodule ClientsUpdate do
	def update(key,value,newvalue) do
		Mongo.update_one(Mongoclient, "clients_test", %{key => value}, %{key => newvalue})
	end
end