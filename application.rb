class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, my name is Something"
    resp.write "\nThe time right now is: #{Time.now}\n\n"

    num_1 = Kernel.rand(1..6)
    num_2 = Kernel.rand(1..3)

    resp.write "\n#{num_1}\n"
    resp.write "\n#{num_2}\n"

    if num_1==num_2
      resp.write "\n\n\nYou Win"
    else
      resp.write "\n\n\nYou Lose"
    end

    resp.finish
  end

end
