get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  redirect "/#{params[:user_input]}"
end

get '/*' do
  @input = params[:splat].first
  word = Word.new({word: @input})
  @anagrams = word.anagrams
  erb :index
end
