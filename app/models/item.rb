class Item < ActiveRecord::Base

validates :price, :numericality => { :greater_than => 0 }

has_many :comments, dependent: :destroy
belongs_to :user
end
