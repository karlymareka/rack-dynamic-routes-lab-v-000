class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.include?("/items/")
      item = req.path[7..-1]
      if Item.all.include?
      resp.write "Item not found"
      resp.status = 400 
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish 
  end 
  
end 
# Get substring past index three through end of string.
last_part = value[3..-1]