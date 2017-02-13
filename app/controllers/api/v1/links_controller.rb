class Api::V1::LinksController < ApplicationController

  def update
    binding.pry
    @link = Link.find(params[:id])
    if @link.update_attributes(link_params)
      render json: @link
    else
      render json: @link.errors.full_messages, status: 500
    end
  end

  def index
    binding.pry
    render json: Link.where(read: true)
  end

  private

  def link_params
    params.permit(:read)
  end
end
