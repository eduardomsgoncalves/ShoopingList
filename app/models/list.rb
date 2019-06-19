class List < ActiveRecord::Base
  validates_presence_of :list, :date
  has_many :list_has_items, dependent: :destroy
  has_many :items, through: :list_has_items
  belongs_to :user

  accepts_nested_attributes_for :list_has_items, allow_destroy: true
end
