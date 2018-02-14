class Product < ActiveRecord::Base
validates :product_name, :product_description,  presence: true
validates :product_name, length: { maximum: 15 }
validates :product_description, length: { maximum: 100 }
validates :product_name, uniqueness: true
has_many :comments
belongs_to :product_type
end
