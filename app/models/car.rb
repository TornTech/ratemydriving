class Car < ActiveRecord::Base
  belongs_to :company
  validates :code, uniqueness: { message: "code has already been taken" }
end