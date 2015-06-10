class Car < ActiveRecord::Base
  belongs_to :company
  validates :code, uniqueness: { message: "code has already been taken" }
  validates :license_plate, uniqueness: { message: "license plate has already been taken" }
end