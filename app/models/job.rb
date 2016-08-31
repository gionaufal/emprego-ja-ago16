class Job < ApplicationRecord
  belongs_to :company
  validates :title, :category, presence: true
end
