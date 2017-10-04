class Car < ApplicationRecord
  has_many :reservation #,  dependent: :destroy

  validates :license, presence: true, uniqueness: true
  validates :status, inclusion: { in: ["Checked_out", "Available"],  message: 'needs to be either Checked_out or Available' }
end
