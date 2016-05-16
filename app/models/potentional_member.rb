class PotentionalMember < ActiveRecord::Base
	has_many :feedbacks, dependent: :destroy
	accepts_nested_attributes_for :feedbacks

	def self.search(search)
	  if search
	    where("name LIKE ?", "%#{search}%")
	  else
	    all
	  end
	end
end
