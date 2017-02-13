class LinksController < ApplicationController

  before_action :set_user

  def index
    @link = @user.links.new
    @links = @user.links
    binding.pry
  end

  def create
    @link = @user.links.create(link_params)
    if @link.save
    else
      flash[:notice] = "Invalid url, please enter a valid web address"
    redirect_to links_path
    end
  end

  private

  def link_params
    params.require(:link).permit(:id, :title, :url, :read, :user_id)
  end

  def set_user
    @user = current_user
  end

end
