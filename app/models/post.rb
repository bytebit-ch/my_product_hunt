class Post < ActiveRecord::Base
	belongs_to :user
	validates :link, :url =>  {
		message: "Invalid URL make sure to input the full link"
	}
	validates_presence_of :title, :description, :category

end
 