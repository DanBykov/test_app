module Admin::PawnshopRequestsHelper
  def request_state_with_buttons(pawnshop_request)
    out = content_tag(
      :div,
      t("pawnshop_request_states.#{pawnshop_request.state}")
    )

    if pawnshop_request.state == 'new_request'
      out << edit_link(pawnshop_request) << reject_link(pawnshop_request)
    end

    out
  end

  def edit_link(pawnshop_request)
    link_to 'Редактировать',
      [:edit, :admin, pawnshop_request],
      class: 'btn btn-primary'
  end

  def reject_link(pawnshop_request)
    link_to 'Отклонить',
      [:admin, pawnshop_request, reject: true],
      method: 'patch',
      class: 'btn btn-danger'
  end

end
