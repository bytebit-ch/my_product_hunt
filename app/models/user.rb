class User < ActiveRecord::Base
  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :email_format => {
		message: 'email is not in a correct format', 
		check_mx: true,
		mx_message: "MX record invalid"
	}
  has_many :comments
end
