# enable :sessions
# require 'byebug'
get '/' do
	@URL = Url.last(10)
  erb :"static/index"
  
end


# get '/follower_viz' do 
# @link = Url.find_by(converted_url: params[:converted_url])
# redirect to "#{@link.main_url}"
# end

post '/url' do
	@url = Url.new(main_url: params[:main_url])#{}"links:#{params[:shortcode]}"
	@url.shorten
	@url.click_count = 0
	@url.save
		   # @url.to_json(except: [:id, :created_at, :updated_at])
		   		    @url.to_json(except: [:id, :main_url, :converted_url])

 redirect '/'  
end
	
get '/:converted_url' do
		@link = Url.find_by(converted_url: params[:converted_url])
		 @link.click_count += 1
		@link.save
		redirect to "#{@link.main_url}"
end

post '/del' do
Url.destroy_all
 redirect '/'

end


# post '/update' do 

# task= Url.all
# 		 task.each_with_index do |x, index|
#  		 		x.update(:id => index+1)
#  		 	end
# 	end