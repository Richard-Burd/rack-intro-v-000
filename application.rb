class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, my name is Something"
    resp.write "\n The time right now is: #{Time.now}"
    resp.finish
  end

end
