class Comment < ActiveRecord::Base

validates :title, presence: true
validates :text, presence: true

belongs_to :item
belongs_to :user
end
