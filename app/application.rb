class Application

  @@item=[]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item = req.params['item']
      if @@items.include?(item)
        resp.write "#{item['price']}"
      end
    end
    resp.finish
  end

end
