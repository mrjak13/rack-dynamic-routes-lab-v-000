class Aplication

  def call(env)      
  resp = Rack::Response.new
  req = Rack::Request.new(env)

  if req.path.match(/items/)
    item_name = req.path.split("/items/").last
    @@items.detect {|item| item.name == item_name}.price
  
  resp.finish
  end
end
  