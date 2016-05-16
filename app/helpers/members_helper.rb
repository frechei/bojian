module MembersHelper
	def card_category_value(card_category)
		value = case card_category
		when "year"
			"年卡"
		when "half_year"
			"半年卡"
		when "season"
			"季卡"
		end
	end

	def sword_value(sword)
		value = case sword
		when "duelling"
			"重剑"
		when "foil"
			"花剑"
		when "walking"
			"佩剑"
		end
	end

end
