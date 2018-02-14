class Comment < ActiveRecord::Base
  validates :comment_body,  presence: true
  validates :comment_body, length: { maximum: 50 }
  belongs_to :product
end
