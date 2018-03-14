class Application

  @@item=[Item.new("Figs", 3.42), Item.new("Pears", 0.99)]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/<ITEM NAME>"
      return @@item['price']
    else
      resp.write "Item not found"
      resp.status = 404
    end
  end
  resp.finish
end
