class Movement < ApplicationRecord
  belongs_to :product
  Movementtypes = {add: 0, remove: 1}
  validates :quantity, presence: true, uniqueness: true, numericality: true

  def self.get_movement_types
    {
      'Agregar' => Movementtypes[:add],
      'quitar' => Movementtypes[:remove]
    }
  end
end
