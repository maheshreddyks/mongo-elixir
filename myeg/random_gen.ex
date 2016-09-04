defmodule RandomGen do
	def rand() do	
		Process.sleep(6000)	
		sing = Mongo.insert_one(Mongoclient, "test_chinni", %{"test_voltage" => Enum.take_random(600..1000,1) |> List.first})
		IO.inspect(sing)
		rand()
	end
end