class Article < ApplicationRecord
	belongs_to :user
	has_many :comments

	default_scope -> {order(created_at: :desc)}
	#validates :user_id, presence: true
	validates :title, presence: true, length:{ minimum:5 }
	validates :body, presence: true, length: { maximum: 2000 }
end
