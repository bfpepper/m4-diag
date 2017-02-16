class Api::V1::LinksController < ApplicationController

  def update
    @link = Link.find(params[:id])
    if @link.update_attributes(link_params)
      HotReads.new.send(@link.url)
      render json: @link
    else
      render json: @link.errors.full_messages, status: 500
    end
  end

  def index
    render json: Link.where(read: true)
  end

  private

  def link_params
    params.permit(:read)
  end
end
