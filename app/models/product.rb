class Product < ActiveRecord::Base
  belongs_to :store
  validates :product_name, presence: true
end
