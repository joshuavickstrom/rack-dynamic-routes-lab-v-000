class Application
  @@item=[]
  def call(env)
    resp = Rack::Response.new
    req = Rack:Request.new(env)

    if req.path=="/items/<ITEM NAME>"
    else
      resp.write "Item not found"
      resp.status = 404
    end
  end
  resp.finish
end
