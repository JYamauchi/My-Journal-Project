require 'pry'

class WelcomeController < ApplicationController

	before_action :authenticate_user!, :except => [:show, :index]

	def index
		
	end

end