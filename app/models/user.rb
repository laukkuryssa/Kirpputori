class User < ActiveRecord::Base



validates :username, presence: true,
			uniqueness: true,
                       length: { minimum: 4 },
			length: { maximum: 16}
validates :password, length: { minimum: 4 },
                       format: {
                          with: /\d.*[A-Z]|[A-Z].*\d/,
                          message: "has to contain one number and one upper case letter"
                       }

    has_many :items, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_secure_password

end

