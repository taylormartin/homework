require 'sinatra'
require 'pry'


get "/word" do
  haml :display
end

post "/word" do
  @count = params[:text].split("").count
  @reversed = params[:text].reverse.to_s
  haml :display
end
