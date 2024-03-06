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

  def self.manufacturer_select
    ["Mazda", "Toyota", "Nissan", "Subaru", "Mitsibishi", "Honda"]
  end

  def self.layout_select
    ["FWD", "RWD", "AWD"]
  end

  def self.transmission_select
    ["Manual", "Automatic", "Sequential"]
  end

  def self.body_select
    ["Coupé", "Hatchback", "Saloon", "Convertible", "Estate", "Targa"]
  end
end
