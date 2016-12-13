require_relative'../../config/environments/init'

class Url < ActiveRecord::Base
	
validates :main_url, format: {with: /\A(http|https)\:\/\//,
 message: "Url start with http://"}
before_save :shorten, if: :new_record?  
	
	# def new_record
	# 	true
	# end
 

	def shorten
	self.converted_url = (("A".."Z").to_a + ("a".."z").to_a + ("0".."9").to_a).sample(6).join
	end


  # def destroy_them_all
  #   self.del = Url.destroy_all
  #   redirect "/"
  # end
 
	

end


# $ ps aux | grep 'ruby'
# shotgun config.ru
# gem install SecureRandom
# $ kill -9 5407
 #$ kill -9 4-82
#$ bundle exec rake server

