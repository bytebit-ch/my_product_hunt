class Post < ActiveRecord::Base
	
	validates :link, :url =>  {
		message: "Invalid URL make sure to input the full link"
	}

end
