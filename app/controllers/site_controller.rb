class SiteController < ApplicationController

  def index
    if current_user
      redirect_to links_path
    else
      redirect_to login_path
    end
  end

end
