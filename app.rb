require "./nancy"

get "/bare-get" do
  "Whoa, it works!"
end

post "/" do
  request.body.read
end

Rack::Handler::WEBrick.run Nancy::Application, Port: 9292
