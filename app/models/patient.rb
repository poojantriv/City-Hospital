class Patient < ApplicationRecord
	belongs_to :user
	has_many :folders, dependent: :destroy
end
