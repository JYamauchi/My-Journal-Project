require 'pry'
require 'httparty'

class ProfilesController < ApplicationController

	before_action :authenticate_user!, :except => [:show, :index]

	def index
		# @profile = current_user.build_profile()
		@posts = Post.all
	end

	def show
		@user = current_user
		@profile = current_user.profile
		@posts = current_user.profile.posts
		@post = Post.new

		# secret_key = ENV['secret_key']

    	# search_value = params[:search].gsub(/\s/,"%20")

    	# if search_value.present?
     #  		search_results = HTTParty.get("http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&rating=pg&tag=#{post.body}").parsed_response
     #  		@photos = search_results.first(100)
     #  		render :search
    	# else
     #  		redirect_to :back, notice: "Must provide a search term" 
    	# end
	
		# the view for this action needs to show the posts
	end

	def new
		@user = current_user
		@profile = current_user.profile.build

	end

	def create
 		@profile = current_user.profile.new(profile_params)
    	if @profile.save
	    	redirect_to user_profile_path
	    else
	     	render 'new'
	    end 
	end

	def edit
    	@profile = current_user.profile.find(params[:current_user])
	end

	def update
    	# @profile = current_user.profile.update_attributes(profile_params)
		@profile = current_user.profile.update_attributes(profile_params)
		if @profile.update(post_params)
      		redirect_to @profile
	    else
	     	render 'edit'
	    end
	end

	private

	def profile_params
    	params.require(:profile).permit(:name, :photo_url, :hometown, :interests, :about_me)
	end

end
