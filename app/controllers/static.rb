get '/' do
 @urls = Url.last(5)
 @list = @urls.reverse
 erb :"static/index"
end

post '/urls' do
 # create a new Url
 @urls = Url.create(long_url: params[:long_url])
 erb :"static/index"
end

get '/:short_url' do
 # redirect to appropriate "long" URL
 @url = Url.find_by(short_url: params[:short_url])
 redirect @url.long_url
end
