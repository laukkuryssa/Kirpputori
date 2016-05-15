class User < ActiveRecord::Base



	validates :username, uniqueness: true,
                       length: { minimum: 4 }
    has_many :items, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_secure_password

end
