get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  redirect "/?grandma=#{params["user_input"]}"
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
end
