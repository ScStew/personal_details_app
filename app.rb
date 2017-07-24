require "sinatra"

get '/' do 

erb :names	
end

post '/name' do
 	f_name = params[:username]
 redirect '/lastname?first_name=' + f_name
end

get '/lastname' do
first_name = params[:first_name]
erb :last_names, locals: {first_n: first_name}
end

post '/l_name' do
	lastname = params[:l_name]
	first_name = params[:f_name]
	#{}"#{first_name} & #{lastname}"
 redirect '/fav_number?lastname=' + lastname + "&first_name=" + first_name

end

get '/fav_number' do
	first_name = params[:first_name]
	lastname = params[:lastname]
	#{}"#{first_name} & #{lastname}"
	erb :fav_numbers, locals: {first: first_name, last: lastname}
end

post '/favnum' do
num1 = params[:num1]
num2 = params[:num2]
num3 = params[:num3]
firstname = params[:f_name]
lastname = params[:l_name]
"#{num1}, #{num2}, #{num3}, #{firstname}, #{lastname}"
end