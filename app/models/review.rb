# a comment
class Review < ApplicationRecord
  belongs_to :restaurant
  # validates is a function, so it can be written like this:
  # validates(:rating, :content, presence: true)
  # and basically for functions, the last arguement can be a hash!
  # that is why "presence:" is a hashkey with columns after!
  # and ":rating" is a symbol ;)

  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: 0..5 }
  validates :rating, numericality: { only_integer: true }
end
