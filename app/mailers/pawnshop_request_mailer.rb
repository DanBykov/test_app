class PawnshopRequestMailer < ApplicationMailer
  def approved(email)
    mail(
      to: email,
      subject: "Заявка одобрена"
    )
  end
end
