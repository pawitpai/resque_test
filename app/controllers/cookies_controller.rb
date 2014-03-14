class CookiesController < ApplicationController
	def eat
		render text: "Store #{params[:id]} to eat later."
	end
end