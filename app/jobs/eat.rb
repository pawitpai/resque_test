class Eat
	@queue = :eat
	def self.perform(food, drink="water")
		Rails.logger.error("Eat #{food} and drink #{drink}.")
	end
end
