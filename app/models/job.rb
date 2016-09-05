class Job < ApplicationRecord
  belongs_to :company
  belongs_to :category
  validates :title, :category_id, :location, :description,  presence: true
end
