class ListHasItem < ActiveRecord::Base
  validates_presence_of :quantity
  belongs_to :list
  belongs_to :item
end
