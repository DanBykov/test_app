class Admin::PawnshopRequestsController < Admin::ApplicationController
  def index
    @pawnshop_requests = PawnshopRequest.all
  end

  def edit
    @pawnshop_request = PawnshopRequest.new
  end

  def update
    @pawnshop_request = PawnshopRequest.new(pawnshop_request_params)

    if @pawnshop_request.save
      redirect_to :pawnshop_requests,
        notice: 'PawnshopRequest was successfully created.'
    else
      render :new
    end
  end

  private
    def pawnshop_request_params
      params.require(:pawnshop_request).permit(:name, :image, :email)
    end
end
