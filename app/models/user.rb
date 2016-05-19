class User < ActiveRecord::Base
	
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
	has_many :albums , dependent: :destroy
	 validates :password, confirmation: true
	 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email,presence: {message: "email fiels is mandatory"}, format: { with: VALID_EMAIL_REGEX , message: "Invalid email id", multiline: true}, length: { maximum: 50, message: "Maximum Length 50 charachters only" } , :on => :update

end
