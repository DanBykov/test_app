class Admin::PawnshopRequestsController < Admin::ApplicationController
  before_action :set_pawnshop_request, only: %w(edit update)

  def index
    respond_to do |f|
      f.html { @pawnshop_requests = PawnshopRequest.all }
      f.csv { send_data Statistics.import_to_csv }
    end
  end

  def edit
  end

  def update
    if params[:reject].present?
      PawnshopRequestManager.new(@pawnshop_request).reject
      redirect_to [:admin, :pawnshop_requests]
    elsif PawnshopRequestManager.new(@pawnshop_request)
                                  .update(pawnshop_request_params)
      redirect_to [:admin, :pawnshop_requests]
    else
      render :edit
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
