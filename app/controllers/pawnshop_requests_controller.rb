class PawnshopRequestsController < ApplicationController
  def index
    @pawnshop_requests = PawnshopRequest.all
  end

  def new
    @pawnshop_request = PawnshopRequest.new
  end

  def create
    @pawnshop_request = PawnshopRequest.new(pawnshop_request_params)

    if PawnshopRequestManager.new(@pawnshop_request).create
      redirect_to :pawnshop_requests
    else
      render :new
    end
  end

  private
    def pawnshop_request_params
      params.require(:pawnshop_request).permit(:name, :image, :email)
    end
end
