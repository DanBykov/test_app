class Admin::PawnshopRequestsController < Admin::ApplicationController
  before_action :set_pawnshop_request, only: %w(edit update)

  def index
    @pawnshop_requests = PawnshopRequest.all
  end

  def edit
  end

  def update
    if @pawnshop_request.update
      redirect_to :pawnshop_requests,
        notice: 'PawnshopRequest was successfully updated.'
    else
      render :new
    end
  end

  private
    def set_pawnshop_request
      @pawnshop_request = PawnshopRequest.find(params[:id])
    end

    def pawnshop_request_params
      params.require(:pawnshop_request).permit(:price)
    end
end
