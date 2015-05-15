class UsersController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    @users = User.all
  end

  def show

    @profile = current_user.profile
    # @profile = Profile.find_by(params[:current_user])
    # @profile = current_user.profile
  end

  def create
    # @profile = current_user.profile
    # @profile = current_user.profile.create!(name: params[:name], photo_url: params[:photo_url], hometown: params[:hometown], interests: params[:interests], about_me: params[:about_me])
  end

end