class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :search_by_manufacturer_model_and_address,
    against: [ :manufacturer, :model, :address ],
    using: {
      tsearch: { prefix: true }
    }
end
