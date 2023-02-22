# a comment
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: %w[Chinese Italian Japanese French Belgian]
end
