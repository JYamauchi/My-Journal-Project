class PostsController < ApplicationController

	before_action :authenticate_user!, :except => [:show, :index]

	def index
		@posts = current_user.profile.posts
	end

	def show
		@post = Post.find(params[:id])
		# then try to render the views/posts/show.html.erb
	end

	def new
		@post = Post.new
	end

	def edit
		@post = Post.find(params[:id])
	end

	def create
		@user = current_user
		# because a user has posts THROUGH profile, we have to say
		# yes, but in that case, a post would have to "belong_to" a user, instead of a profile
		# like you have here now is probably the best way
	    @post = current_user.profile.posts.new(post_params)
	    if @post.save
	      redirect_to user_profile_path(current_user)

	      # do you want to redirect back  to the profile page?
	      # takes you to post show
	    else 
	    	render :new
	    end
	end

	def update
	    @post = Post.find(params[:id])
	    if @post.update(post_params)
	      redirect_to @post
	    else
	      render 'edit'
	    end
	end

	def destroy
	    @post = Post.find(params[:id])
	    @post.destroy
	    redirect_to posts_path
	end

	private

	def post_params
    	params.require(:post).permit(:title, :body)
	end

end
