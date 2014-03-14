class JobStatusesController < ApplicationController
	def index
		@jobs = JobStatus.all
	end

	def show
		@job = JobStatus.find(params[:id])
	end
end
