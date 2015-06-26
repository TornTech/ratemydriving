class Car < ActiveRecord::Base
  belongs_to :company
  has_many :submissions
  validates :code, uniqueness: { message: "code has already been taken" }
  validates :license_plate, uniqueness: { message: "license plate has already been taken" }

  before_save :upcase_code, :upcase_license_plate

  def upcase_code
    self.code = self.code.upcase
  end

  def upcase_license_plate
    self.license_plate = self.license_plate.upcase
  end
end