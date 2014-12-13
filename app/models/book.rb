class Book < ActiveRecord::Base
  belongs_to :author
  has_many :stock

  scope :order_by_id, -> { order(:id) }
end
