class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.includes?("/items/")
    else
      404
    end 
  end 
  
end 