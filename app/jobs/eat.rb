class Eat
	@queue = :eat
	def self.perform(food, drink, job_id)
		job = JobStatus.find(job_id)
		job.update(status: "Processing", started: Time.now)
		if rand > 0.5
			job.update(status: "Failed", finished: Time.now, progress: 0)
			raise "Job Failed" 
		end

		job.update(progress: 50)
		sleep 10
		Rails.logger.error("Eat #{food} and drink #{drink}.") # do some actual work
		job.update(status: "Success", finished: Time.now, progress: 100)
	end
end
