class PawnshopRequest < ActiveRecord::Base
  validates :name, :image, :email, presence: true
  validates :email, format: /\A[^@\s]+@[^@\s]+\.[^@\s]+\z/i
end
