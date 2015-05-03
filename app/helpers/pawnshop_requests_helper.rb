module PawnshopRequestsHelper
  def request_price(pawnshop_request)
    pawnshop_request.price > 0 ? "#{pawnshop_request.price} руб." : ''
  end

  def request_state(pawnshop_request)
    t("pawnshop_request_states.#{pawnshop_request.state}")
  end
end
