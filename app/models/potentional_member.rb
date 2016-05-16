class PotentionalMember < ActiveRecord::Base
		has_many :feedbacks, dependent: :destroy
		accepts_nested_attributes_for :feedbacks
end
