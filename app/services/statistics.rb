module Statistics
  extend self

  def import_to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << ['email', 'Количество одобренных заявок', 'админ?']
      requests = PawnshopRequest.all
      requests.map(&:email).uniq.each do |email|
        csv << [email, approved_count(requests, email), admin?(requests, email)]
      end
    end
  end

  private

    def approved_count(requests, email)
      requests.map { |x| x.email == email && x.state == 'approved' ? 1 : 0 }.sum
    end

    def admin?(requests, email)
      requests
        .map { |x| x.email == email && x.admin }.include?(true) ? 'да' : 'нет'
    end
end
