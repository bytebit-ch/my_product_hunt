class Post < ActiveRecord::Base
	
	validates :link, :url =>  {
		message: "Invalid URL make sure to input the full link"
	}
	validates_presence_of :title, :description, :category
	

	belongs_to :user
	has_many :comments
end
 