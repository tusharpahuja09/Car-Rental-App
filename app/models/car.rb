class Car < ApplicationRecord
  has_many :reservation #,  dependent: :destroy

  validates :license, presence: true
  validates :status, inclusion: { in: ["checked_out", "available"],  message: 'needs to be either chechout or available' }
end
