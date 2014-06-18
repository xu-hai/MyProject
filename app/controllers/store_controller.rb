class StoreController < ApplicationController
	def index
		@products = Product.all
		@cart = current_cart
		@count = increment_count
	end
	def increment_count
		if session[:count].nil?
			session[:count] = 0
		end
		session[:count] +=1
	end
	def reset_count
		session[:count] = 0
	end
end
