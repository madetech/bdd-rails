class NewsletterSubscription
  include ActiveModel::Model

  attr_accessor :email
  validates :email, presence: true, format: { with: /.+@.+/ }

  def save
    if valid?
      NewsletterSubscriptionMailer.welcome(email).deliver_later
      true
    else
      false
    end
  end
end
