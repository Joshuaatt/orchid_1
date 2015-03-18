class Store < ActiveRecord::Base
  validates :title, presence: true
  has_many :products
end
