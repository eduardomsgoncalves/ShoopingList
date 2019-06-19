class Item < ActiveRecord::Base
  validates_presence_of :name
  has_many :list_has_items, dependent: :destroy
  has_many :lists, through: :list_has_items
end
