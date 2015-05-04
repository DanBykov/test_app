class MailJob
  include SuckerPunch::Job
  workers 2

  def approved(email)
    PawnshopRequestMailer.approved(email).deliver
  end
end
