class PawnshopRequestManager
  def initialize(pawnshop_request)
    @pawnshop_request = pawnshop_request
  end

  def reject
    @pawnshop_request.update_columns(state: 'rejected')
  end

  def update(params)
    @pawnshop_request.state = 'approved'
    if @pawnshop_request.update(params)
      MailJob.new.async.approved(@pawnshop_request.email)
      true
    end
  end

  def create
    @pawnshop_request.admin = true if admin?(@pawnshop_request.email)
    @pawnshop_request.save
  end

  private

    def admin?(email)
      Admin.where(email: email).present?
    end
end
