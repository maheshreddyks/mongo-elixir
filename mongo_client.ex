defmodule MongoClient do
  use Mongo.Pool, name: __MODULE__, adapter: Mongo.Pool.Poolboy
  def startmongo do
  	{:ok, _} = Mongo.Pool.start_link("")
  end
  def triggerinputs do
  	Process.sleep(1000)
  	Mongo.insert(Mongo.Pool, data)
  end
end
