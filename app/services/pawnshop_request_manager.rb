class PawnshopRequestManager
  def initialize(pawnshop_request)
    @pawnshop_request = pawnshop_request
  end

  def reject
    @pawnshop_request.update_columns(state: 'rejected')
  end

  def update(params)
    @pawnshop_request.state = 'approved'
    @pawnshop_request.update(params)
  end
end
