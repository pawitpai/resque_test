class CookiesController < ApplicationController
	def eat
		@job = JobStatus.create(parameters: {food: params[:id], drink: params[:drink]})
		Resque.enqueue(Eat, params[:id], params[:drink], @job.id)
		render text: "Store #{params[:id]} to eat later. Your job id is: #{@job.id}"
	end
end
