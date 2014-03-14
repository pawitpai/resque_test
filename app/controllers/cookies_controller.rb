class CookiesController < ApplicationController
	def eat
		Resque.enqueue(Eat, params[:id], params[:drink])
		render text: "Store #{params[:id]} to eat later."
	end
end
