get '/' do
  # puts "in #{__FILE__}"
  # @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  talk_back(params[:user_input])
  # talk_back(params["user_input"])
  # redirect "/?grandma=#{params["user_input"]}"
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
  # erb :index
end

def talk_back(statement)
  if statement == statement.upcase
    return "Not since 1945!"
  else 
    return "What!?!? Speak up!"
  end
end
