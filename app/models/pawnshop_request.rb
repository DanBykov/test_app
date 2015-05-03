class PawnshopRequest < ActiveRecord::Base
  validates :name, :image, :email, presence: true
end
