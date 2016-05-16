class Member < ActiveRecord::Base
	validates :name, presence: true
	validates :phone, presence: true, numericality: { only_integer: true }
	validates :start_date, presence: true
	validates :end_date, presence: true
	validates :card_category, presence: true
	validates :sword, presence: true
	
	validate :end_date_greater_than_start_date
	
	def end_date_greater_than_start_date
		if start_date > end_date
			errors.add(:start_date, "开始时间不能大于结束时间")
			errors.add(:end_date, "开始时间不能大于结束时间")
		end
	end

	def self.search(search)
	  if search
	    where("name LIKE ?", "%#{search}%")
	  else
	    all
	  end
	end
end
