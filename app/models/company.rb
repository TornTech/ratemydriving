class Company < ActiveRecord::Base
  has_many :cars
  validates :name, presence: true
  validates :contact_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end