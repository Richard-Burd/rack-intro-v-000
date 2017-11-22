class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, my name is Something"
    resp.write "\nThe time right now is: #{Time.now}"

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "\nYou Lose"
    end

    resp.finish
  end

end
